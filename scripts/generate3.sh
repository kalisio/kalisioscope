#!/usr/bin/env bash
set -euo pipefail
set -x

PRODUCT=$1
OUTPUT=$2

mkdir -p "$OUTPUT/$PRODUCT"

for STYLE in dark light; do

  # Generate icons
  convert -background none "assets/$PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.svg" "$OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png"
  for SIZE in 1024x1024 512x512 384x384 256x256 192x192 128x128 96x96 64x64; do
    convert "$OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-$SIZE.png"
  done

  # Generate logos
  convert -background "assets/$PRODUCT/$PRODUCT-logo-$STYLE-2048x768.svg" "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png"
  for SIZE in 1024x384 512x192 384x144 256x96 192x72 128x48 96x32 64x24; do
    convert "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-$SIZE.png"
  done

done
