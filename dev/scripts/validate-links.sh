#!/usr/bin/env bash
# ============================================================
#  validate-links.sh — Check that all CDN URLs are reachable
# ============================================================
#  Scans HTML files for external URLs and checks each one
#  returns HTTP 200.
#
#  Usage:  bash dev/scripts/validate-links.sh
#  Run from the project root directory.
# ============================================================

set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
ERRORS=0
CHECKED=0

echo "=== Link Validator ==="
echo ""

# Extract all URLs from HTML files
URLS=$(grep -roh 'https://[^"'"'"' ]*' "${PROJECT_DIR}"/*.html "${PROJECT_DIR}"/examples/*.html 2>/dev/null | sort -u)

if [ -z "${URLS}" ]; then
    echo "No URLs found in HTML files."
    exit 0
fi

for url in ${URLS}; do
    CHECKED=$((CHECKED + 1))

    # Remove trailing characters that aren't part of URLs
    url=$(echo "${url}" | sed 's/[>)]*$//')

    STATUS=$(curl -o /dev/null -s -w "%{http_code}" -L --max-time 10 "${url}" 2>/dev/null || echo "000")

    if [ "${STATUS}" = "200" ] || [ "${STATUS}" = "301" ] || [ "${STATUS}" = "302" ]; then
        echo "  [OK]  ${url}"
    else
        echo "  [FAIL] ${url} (HTTP ${STATUS})"
        ERRORS=$((ERRORS + 1))
    fi
done

echo ""
echo "Checked ${CHECKED} URLs. ${ERRORS} failed."

if [ ${ERRORS} -gt 0 ]; then
    echo ""
    echo "Some links are broken. Check the URLs above and update them."
    exit 1
else
    echo "All links are valid."
    exit 0
fi
