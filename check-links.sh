#!/bin/bash

# Script to extract and check all URLs from README.md

README="README.md"

if [ ! -f "$README" ]; then
    echo "Error: $README not found"
    exit 1
fi

echo "Extracting URLs from $README..."
echo ""

# Extract URLs from markdown links [text](url)
URLS=$(grep -oE '\]\(https?://[^)]+\)' "$README" | sed 's/](\(.*\))/\1/')

if [ -z "$URLS" ]; then
    echo "No URLs found in $README"
    exit 0
fi

# Count total URLs
TOTAL=$(echo "$URLS" | wc -l | tr -d ' ')
echo "Found $TOTAL URLs"
echo ""

# Check each URL
SUCCESS=0
FAILED=0

while IFS= read -r url; do
    echo -n "Checking $url ... "
    
    # Use curl to check if URL is accessible (follow redirects, timeout after 10 seconds)
    HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}" -L --max-time 10 "$url")
    
    if [ "$HTTP_CODE" -ge 200 ] && [ "$HTTP_CODE" -lt 400 ]; then
        echo "✓ OK ($HTTP_CODE)"
        SUCCESS=$((SUCCESS + 1))
    else
        echo "✗ FAILED ($HTTP_CODE)"
        FAILED=$((FAILED + 1))
    fi
done <<< "$URLS"

echo ""
echo "Results: $SUCCESS successful, $FAILED failed out of $TOTAL total"

if [ $FAILED -gt 0 ]; then
    exit 1
fi
