#!/bin/bash

# Norwich RNA Club - Image Download Script
# Run this script in the same directory

mkdir -p images/speakers images/team images/backgrounds

echo "=== Downloading images from Zyro CDN ==="

# Base URL
BASE="https://assets.zyrosite.com/m5K27rQrQbHx4MJM"

# Logo
echo "Downloading logo..."
curl -L -o "images/logo.png" "${BASE}/snipaste_2023-10-30_20-07-31-YbNZxy2Kw9teMQKp.png"

# Team member photos
echo "Downloading team photos..."
curl -L -o "images/team/dr-alper-akay.webp" "${BASE}/dr-alper-akay-meP1NDwGDlSEE3aj.webp"
curl -L -o "images/team/dr-wilfried-haerty.jpeg" "${BASE}/dr-wilfried-haerty-mxBlk6wab7upDOnz.jpeg"
curl -L -o "images/team/haopeng-yu.jpeg" "${BASE}/haopengyuphoto-300x300-AQE4MLw5bgiz9za0.jpeg"
curl -L -o "images/team/maria.jpeg" "${BASE}/maria-YBg8BQOplWik1Zl2.jpeg"
curl -L -o "images/team/yiliang-ding.jpg" "${BASE}/yiliangding_profile_no_reflection-A3QPWpVPPJHk89vp.jpg"
curl -L -o "images/team/susan-duncan.jpeg" "${BASE}/susan-duncan-e1584113256256-70x70-mk3yEBB2qBHz9MPB.jpeg"

# Speaker photos (for events/seminars)
echo "Downloading speaker photos..."
curl -L -o "images/speakers/yue-wan.jpg" "${BASE}/20161213-wan-yue-32u4arsaevdbup1o3dhy4g-ALpOlJPM0btjZjyM.jpg"
curl -L -o "images/speakers/danny-incarnato.jpg" "${BASE}/incarnato_567x283px-YZ9742WDPyHbw9Qo.jpg"
curl -L -o "images/speakers/julius-lucks.jpg" "${BASE}/jblucks_head_shot-d95rRxoe58TOz90k.jpg"
curl -L -o "images/speakers/junjie-guo.jpeg" "${BASE}/junjie_guo-Y4LJ2QwKVPiajqgK.jpeg"
curl -L -o "images/speakers/matthias-soller.jpg" "${BASE}/soller-matthias-AoP6kewQvDTpJOg7.jpg"
curl -L -o "images/speakers/event-logo-2024.png" "${BASE}/logo2024-03-12_00-14-20-m7Vk7VeMoNceQNN1.png"

# Background images
echo "Downloading background images..."
curl -L -o "images/backgrounds/hero-bg.jpg" "${BASE}/newfile-8-Y4L8apeb5RsB53QQ.jpg"
curl -L -o "images/backgrounds/join-bg.jpg" "https://assets.zyrosite.com/mPoyZVg96EI62K0E/tom-barrett-zlerWtnneUE-unsplash-YajN4bMKgQCkaZMP.jpg"

# Unsplash images (for OG/social sharing)
echo "Downloading Unsplash images..."
curl -L -o "images/backgrounds/og-events.jpg" "https://images.unsplash.com/photo-1609863528735-f1b9b7398fbc?ixlib=rb-4.0.3&auto=jpeg&fit=crop&w=1200&h=630"
curl -L -o "images/backgrounds/og-home.jpg" "https://images.unsplash.com/photo-1609863528981-13f702d9c080?ixlib=rb-4.0.3&auto=jpeg&fit=crop&w=1200&h=630"
curl -L -o "images/backgrounds/og-join.jpg" "https://images.unsplash.com/photo-1575467322691-1e971b0a6d32?ixlib=rb-4.0.3&auto=jpeg&fit=crop&w=1200&h=630"

echo ""
echo "=== Download complete! ==="
echo ""
echo "Images saved to:"
echo "  images/logo.png              - Website logo"
echo "  images/team/                 - Team member photos"
echo "  images/speakers/             - Speaker photos for events"
echo "  images/backgrounds/          - Background and OG images"
echo ""
ls -la images/
ls -la images/team/
ls -la images/speakers/
ls -la images/backgrounds/
