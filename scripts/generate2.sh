#!/usr/bin/env bash
set -euo pipefail
set -x

PRODUCT=$1
OUTPUT=$2

mkdir -p "$OUTPUT/$PRODUCT"

#for STYLE in black color white grey; do
STYLE=color

  # Generate icons
  cp "$PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png" "$OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png"
  for SIZE in 1024x1024 512x512 384x384 256x256 192x192 128x128 64x64; do
    convert "$OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-$SIZE.png"
  done

  # Generate square logos 
  cp "$PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png" "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png"
  for SIZE in 1024x1024 512x512 384x384 256x256 192x192 128x128 64x64; do
    convert "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-$SIZE.png"
  done

  # Generate banner logos
  convert "$PRODUCT/$PRODUCT-logo-$STYLE-2048x1024.png" -strip -crop 2048x768+0+128 "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png"
  for SIZE in 1024x384 512x192 384x144 256x96 192x64 128x48; do
    convert "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-$SIZE.png"
  done

#done
