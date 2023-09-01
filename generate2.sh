#!/bin/bash

PRODUCT=$1
OUTPUT=$2

mkdir -p $OUTPUT/$PRODUCT

# Generate icons
cp $PRODUCT/$PRODUCT-icon-color-2048x2048.png $OUTPUT/$PRODUCT/$PRODUCT-icon-color-2048x2048.png
mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-color-1024x1024.png $PRODUCT/$PRODUCT-icon-color-2048x2048.png
mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-color-512x512.png $PRODUCT/$PRODUCT-icon-color-2048x2048.png
mogrify -resize 256x256 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-color-256x256.png $PRODUCT/$PRODUCT-icon-color-2048x2048.png
mogrify -resize 192x192 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-color-192x192.png $PRODUCT/$PRODUCT-icon-color-2048x2048.png
mogrify -resize 128x128 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-color-128x128.png $PRODUCT/$PRODUCT-icon-color-2048x2048.png
mogrify -resize 64x64 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-color-64x64.png $PRODUCT/$PRODUCT-icon-color-2048x2048.png

# Generate square logos 
cp $PRODUCT/$PRODUCT-logo-color-2048x2048.png $OUTPUT/$PRODUCT/$PRODUCT-logo-color-2048x2048.png
mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-olor-1024x1024.png $PRODUCT/$PRODUCT-logo-color-2048x2048.png
mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-color-512x512.png $PRODUCT/$PRODUCT-logo-color-2048x2048.png
mogrify -resize 256x256 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-color-256x256.png $PRODUCT/$PRODUCT-logo-color-2048x2048.png
mogrify -resize 192x192 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-color-192x192.png $PRODUCT/$PRODUCT-logo-color-2048x2048.png
mogrify -resize 128x128 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-color-128x128.png $PRODUCT/$PRODUCT-logo-color-2048x2048.png
mogrify -resize 64x64 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-color-64x64.png $PRODUCT/$PRODUCT-logo-color-2048x2048.png

# Generate banner logos 
cp $PRODUCT/$PRODUCT-logo-color-2048x1024.png $OUTPUT/$PRODUCT/$PRODUCT-logo-color-2048x1024.png
mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-olor-1024x512.png $PRODUCT/$PRODUCT-logo-color-2048x1024.png
mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-color-512x256.png $PRODUCT/$PRODUCT-logo-color-2048x1024.png
mogrify -resize 384x192 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-color-384x192.png $PRODUCT/$PRODUCT-logo-color-2048x1024.png
mogrify -resize 256x128 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-color-256x128.png $PRODUCT/$PRODUCT-logo-color-2048x1024.png
mogrify -resize 128x64 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-color-128x64.png $PRODUCT/$PRODUCT-logo-color-2048x1024.png
