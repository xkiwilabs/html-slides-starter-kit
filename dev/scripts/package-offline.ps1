# ============================================================
#  package-offline.ps1 — Package slides for offline use (Windows)
# ============================================================
#  Downloads reveal.js and rewrites CDN links to local paths.
#  Creates a zip file ready for USB or offline presenting.
#
#  Usage:  .\dev\scripts\package-offline.ps1
#  Run from the project root directory in PowerShell.
# ============================================================

$ErrorActionPreference = "Stop"

$RevealVersion = "5.1.0"
$RevealUrl = "https://github.com/hakimel/reveal.js/archive/refs/tags/$RevealVersion.tar.gz"
$ProjectDir = (Resolve-Path "$PSScriptRoot\..\..").Path
$VendorDir = Join-Path $ProjectDir "vendor\reveal.js"
$OutputZip = Join-Path $ProjectDir "slides-offline.zip"

Write-Host "=== HTML Slides Offline Packager ===" -ForegroundColor Cyan
Write-Host ""

# Step 1: Download reveal.js
Write-Host "[1/4] Downloading reveal.js $RevealVersion..." -ForegroundColor Yellow
$TempDir = Join-Path $env:TEMP "reveal-download-$(Get-Random)"
New-Item -ItemType Directory -Path $TempDir -Force | Out-Null
$TarFile = Join-Path $TempDir "reveal.tar.gz"
$ZipFile = Join-Path $TempDir "reveal.zip"

# Try tar.gz first, fall back to zip
try {
    Invoke-WebRequest -Uri $RevealUrl -OutFile $TarFile -UseBasicParsing
    tar -xzf $TarFile -C $TempDir
} catch {
    # Fallback: download zip instead
    $ZipUrl = "https://github.com/hakimel/reveal.js/archive/refs/tags/$RevealVersion.zip"
    Invoke-WebRequest -Uri $ZipUrl -OutFile $ZipFile -UseBasicParsing
    Expand-Archive -Path $ZipFile -DestinationPath $TempDir -Force
}

$VendorParent = Split-Path $VendorDir -Parent
if (-not (Test-Path $VendorParent)) {
    New-Item -ItemType Directory -Path $VendorParent -Force | Out-Null
}
if (Test-Path $VendorDir) {
    Remove-Item $VendorDir -Recurse -Force
}
Move-Item (Join-Path $TempDir "reveal.js-$RevealVersion") $VendorDir
Remove-Item $TempDir -Recurse -Force
Write-Host "    Downloaded to vendor\reveal.js\" -ForegroundColor Green

# Step 2: Rewrite CDN links in HTML files
Write-Host "[2/4] Rewriting CDN links to local paths..." -ForegroundColor Yellow
$HtmlFiles = Get-ChildItem -Path $ProjectDir -Filter "*.html" -Recurse |
    Where-Object { $_.FullName -notlike "*\vendor\*" -and $_.FullName -notlike "*\node_modules\*" }

foreach ($file in $HtmlFiles) {
    $fileDir = $file.DirectoryName
    $vendorDist = Join-Path $ProjectDir "vendor\reveal.js\dist"

    # Calculate relative path
    Push-Location $fileDir
    $relPath = (Resolve-Path -Relative $vendorDist).Replace("\", "/")
    Pop-Location

    $content = Get-Content $file.FullName -Raw

    # Replace CDN CSS link
    $content = $content -replace [regex]::Escape("https://cdn.jsdelivr.net/npm/reveal.js@$RevealVersion/dist/reveal.css"), "$relPath/reveal.css"

    # Replace CDN JS link
    $content = $content -replace [regex]::Escape("https://cdn.jsdelivr.net/npm/reveal.js@$RevealVersion/dist/reveal.js"), "$relPath/reveal.js"

    # Replace CDN plugin links
    $content = $content -replace [regex]::Escape("https://cdn.jsdelivr.net/npm/reveal.js@$RevealVersion/plugin/"), "$relPath/../plugin/"

    Set-Content -Path $file.FullName -Value $content -NoNewline
}
Write-Host "    Rewrote links in $($HtmlFiles.Count) HTML files" -ForegroundColor Green

# Step 3: Remove Google Fonts links
Write-Host "[3/4] Removing Google Fonts links (system fonts used as fallback)..." -ForegroundColor Yellow
foreach ($file in $HtmlFiles) {
    $lines = Get-Content $file.FullName |
        Where-Object { $_ -notmatch "fonts\.googleapis\.com" -and $_ -notmatch "fonts\.gstatic\.com" }
    Set-Content -Path $file.FullName -Value ($lines -join "`n")
}
Write-Host "    Removed Google Fonts references" -ForegroundColor Green

# Step 4: Create zip
Write-Host "[4/4] Creating offline package..." -ForegroundColor Yellow
if (Test-Path $OutputZip) {
    Remove-Item $OutputZip -Force
}

# Create zip excluding dev files
$FilesToZip = Get-ChildItem -Path $ProjectDir -Recurse |
    Where-Object {
        $_.FullName -notlike "*\.git\*" -and
        $_.FullName -notlike "*\dev\*" -and
        $_.FullName -notlike "*\.claude\*" -and
        $_.FullName -notlike "*\node_modules\*" -and
        $_.FullName -notlike "*.zip" -and
        -not $_.PSIsContainer
    }

Compress-Archive -Path ($FilesToZip.FullName) -DestinationPath $OutputZip -Force

$Size = (Get-Item $OutputZip).Length / 1MB
$SizeStr = "{0:N1} MB" -f $Size

Write-Host ""
Write-Host "=== Done! ===" -ForegroundColor Cyan
Write-Host "Offline package: $OutputZip ($SizeStr)"
Write-Host ""
Write-Host "To use: unzip on any computer and double-click index.html"
Write-Host "No internet connection required."
