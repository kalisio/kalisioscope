#!/usr/bin/env bash
set -euo pipefail
set -x

PRODUCT=$1
OUTPUT=$2

mkdir -p "$OUTPUT/$PRODUCT"

# Generate icons
cp "assets/$PRODUCT/$PRODUCT-icon-2048x2048.png" "$OUTPUT/$PRODUCT/$PRODUCT-icon-2048x2048.png"
for SIZE in 1024x1024 512x512 256x256 192x192 128x128 64x64 48x48 32x32 24x24; do
    convert "$OUTPUT/$PRODUCT/$PRODUCT-icon-2048x2048.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-icon-$SIZE.png"
done

# Generate square logos with black text
cp "assets/$PRODUCT/$PRODUCT-logo-black-2048x2048.png" "$OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x2048.png"
for SIZE in 1024x1024 512x512 256x256 192x192 128x128 64x64; do
    convert "$OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x2048.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-logo-black-$SIZE.png"
done

# Generate square logos with white text
convert "$OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x2048.png" -strip -fuzz 1% -fill white -opaque black "$OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x2048.png"
for SIZE in 1024x1024 512x512 256x256 192x192 128x128 64x64; do
    convert "$OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x2048.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-logo-white-$SIZE.png"
done

# Generate banner logos with black text
cp "assets/$PRODUCT/$PRODUCT-logo-black-2048x672.png" "$OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x672.png"
for SIZE in 1024x336 512x168 256x84 192x64 128x42; do
    convert "$OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x672.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-logo-black-$SIZE.png"
done

# Generate banner logos with white text
convert "$OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x672.png" -strip -fuzz 1% -fill white -opaque black "$OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x672.png"
for SIZE in 1024x336 512x168 256x84 192x64 128x42; do
    convert "$OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x672.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-logo-white-$SIZE.png"
done
