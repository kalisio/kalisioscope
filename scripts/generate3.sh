#!/usr/bin/env bash
set -euo pipefail
set -x

PRODUCT=$1
OUTPUT=$2

PRODUCT_DIR="$OUTPUT/$PRODUCT"

# create product dir
mkdir -p "$PRODUCT_DIR"

# Copy assets in destination dir
cp assets/$PRODUCT/*-light.svg "$PRODUCT_DIR/."

# Generate dark variant
for LIGHT_SVG in "$PRODUCT_DIR"/*-light.svg; do
  DARK_SVG="${LIGHT_SVG//-light.svg/-dark.svg}"
  sed \
    -e 's/#6E5AA6/#CFBDFE/g' \
    "$LIGHT_SVG" > "$DARK_SVG"
  echo "✓ $LIGHT_SVG → $DARK_SVG"
done

for STYLE in light dark; do

  # Build the list of icon variants to process
  ICON_VARIANTS=("$PRODUCT-icon")
  [[ -f "$PRODUCT_DIR/$PRODUCT-icon-mono-$STYLE.svg" ]] && ICON_VARIANTS+=("$PRODUCT-icon-mono")

  # Generate icons
  for VARIANT in "${ICON_VARIANTS[@]}"; do
    convert -background none -density 300 "$PRODUCT_DIR/$VARIANT-$STYLE.svg" -resize 2048x2048 "$PRODUCT_DIR/$VARIANT-$STYLE-2048x2048.png"
    for SIZE in 1024x1024 512x512 384x384 256x256 192x192 128x128 96x96 64x64 32x32; do
      convert "$PRODUCT_DIR/$VARIANT-$STYLE-2048x2048.png" -strip -resize "$SIZE" "$PRODUCT_DIR/$VARIANT-$STYLE-$SIZE.png"
    done
  done


  # Build the list of logo variants to process
  LOGO_VARIANTS=("$PRODUCT-logo")
  [[ -f "$PRODUCT_DIR/$PRODUCT-logo-mono-$STYLE.svg" ]] && LOGO_VARIANTS+=("$PRODUCT-logo-mono")
  [[ -f "$PRODUCT_DIR/$PRODUCT-logo-vert-$STYLE.svg" ]] && LOGO_VARIANTS+=("$PRODUCT-logo-vert")
  [[ -f "$PRODUCT_DIR/$PRODUCT-logo-vert-mono-$STYLE.svg" ]] && LOGO_VARIANTS+=("$PRODUCT-logo-vert-mono")

  # Generate logos
  convert -background none -density 300 "assets/$PRODUCT/$PRODUCT-logo-$STYLE.svg" -resize x2048 "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-x2048.png"
  for SIZE in x1024 x768 x512 x384 x256 x192 x128 x96 x64 x32; do
     convert "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-x2048.png" -strip -resize "$SIZE" "$OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-$SIZE.png"
  done

done

if [[ "$PRODUCT" == "kalisio" ]]; then
  convert -background none -density 300 "$PRODUCT_DIR/kalisio-logo-light.svg" -resize x96 "$PRODUCT_DIR/kalisio-logo-light-256x96.png"
fi