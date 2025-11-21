#!/bin/bash

# Norwich RNA Club - Poster Download Script
# Downloads event posters from Zyro CDN
# Posters are named by event date (YYYY-MM-DD.png)

mkdir -p images/posters

echo "=== Downloading event posters ==="

# 2024-08-12: RNA plasticity in neuronal health and disease (Dr. Junjie Guo)
echo "Downloading poster for 2024-08-12..."
curl -L -o "images/posters/2024-08-12.png" "https://assets.zyrosite.com/m5K27rQrQbHx4MJM/norwichrnaclub12082024-AzG70wPxQzHGryVw.png"

echo ""
echo "=== Download complete! ==="
echo ""
echo "Posters saved to images/posters/"
echo "  - 2024-08-12.png (RNA plasticity - Dr. Junjie Guo)"
echo ""
echo "To add more posters in the future:"
echo "1. Save poster as images/posters/YYYY-MM-DD.png (using event date)"
echo "2. Update data/conferences.yml with: poster: \"images/posters/YYYY-MM-DD.png\""
echo ""
ls -la images/posters/
