#!/usr/bin/env bash
# ============================================================
#  package-offline.sh — Package slides for offline use
# ============================================================
#  Downloads reveal.js and rewrites CDN links to local paths.
#  Creates a zip file ready for USB or offline presenting.
#
#  Usage:  bash dev/scripts/package-offline.sh
#  Run from the project root directory.
# ============================================================

set -euo pipefail

REVEAL_VERSION="5.1.0"
REVEAL_URL="https://github.com/hakimel/reveal.js/archive/refs/tags/${REVEAL_VERSION}.tar.gz"
PROJECT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
VENDOR_DIR="${PROJECT_DIR}/vendor/reveal.js"
OUTPUT_ZIP="${PROJECT_DIR}/slides-offline.zip"

echo "=== HTML Slides Offline Packager ==="
echo ""

# Step 1: Download reveal.js
echo "[1/4] Downloading reveal.js ${REVEAL_VERSION}..."
mkdir -p "${PROJECT_DIR}/vendor"
TEMP_DIR=$(mktemp -d)
curl -sL "${REVEAL_URL}" -o "${TEMP_DIR}/reveal.tar.gz"
tar -xzf "${TEMP_DIR}/reveal.tar.gz" -C "${TEMP_DIR}"
rm -rf "${VENDOR_DIR}"
mv "${TEMP_DIR}/reveal.js-${REVEAL_VERSION}" "${VENDOR_DIR}"
rm -rf "${TEMP_DIR}"
echo "    Downloaded to vendor/reveal.js/"

# Step 2: Rewrite CDN links in HTML files
echo "[2/4] Rewriting CDN links to local paths..."
HTML_FILES=$(find "${PROJECT_DIR}" -name "*.html" -not -path "*/vendor/*" -not -path "*/node_modules/*")

for file in ${HTML_FILES}; do
    REL_PATH=$(python3 -c "
import os.path
file_dir = os.path.dirname('${file}')
vendor_dir = '${PROJECT_DIR}/vendor/reveal.js/dist'
print(os.path.relpath(vendor_dir, file_dir))
")

    # Replace CDN CSS link
    sed -i.bak "s|https://cdn.jsdelivr.net/npm/reveal.js@${REVEAL_VERSION}/dist/reveal.css|${REL_PATH}/reveal.css|g" "${file}"

    # Replace CDN JS link
    sed -i.bak "s|https://cdn.jsdelivr.net/npm/reveal.js@${REVEAL_VERSION}/dist/reveal.js|${REL_PATH}/reveal.js|g" "${file}"

    # Replace CDN plugin links
    sed -i.bak "s|https://cdn.jsdelivr.net/npm/reveal.js@${REVEAL_VERSION}/plugin/|${REL_PATH}/../plugin/|g" "${file}"

    # Clean up backup files
    rm -f "${file}.bak"
done
echo "    Rewrote links in $(echo "${HTML_FILES}" | wc -l | tr -d ' ') HTML files"

# Step 3: Remove Google Fonts links (system fonts will be used)
echo "[3/4] Removing Google Fonts links (system fonts used as fallback)..."
for file in ${HTML_FILES}; do
    sed -i.bak '/fonts.googleapis.com/d' "${file}"
    sed -i.bak '/fonts.gstatic.com/d' "${file}"
    rm -f "${file}.bak"
done
echo "    Removed Google Fonts references"

# Step 4: Create zip
echo "[4/4] Creating offline package..."
cd "${PROJECT_DIR}"
zip -r "${OUTPUT_ZIP}" . \
    -x "*.git*" \
    -x "dev/*" \
    -x "*.zip" \
    -x ".claude/*" \
    -x "node_modules/*" \
    -x "*.md" \
    > /dev/null 2>&1

# Re-include README and guides (markdown is useful)
zip -r "${OUTPUT_ZIP}" README.md guides/ prompts/ > /dev/null 2>&1

SIZE=$(du -h "${OUTPUT_ZIP}" | cut -f1)
echo ""
echo "=== Done! ==="
echo "Offline package: ${OUTPUT_ZIP} (${SIZE})"
echo ""
echo "To use: unzip on any computer and double-click index.html"
echo "No internet connection required."
