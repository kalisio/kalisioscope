#!/bin/bash

PRODUCT=$1
OUTPUT=$2

mkdir -p $OUTPUT/$PRODUCT

# Generate icons
cp $PRODUCT/$PRODUCT-icon-2048x2048.png $OUTPUT/$PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-1024x1024.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-512x512.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 256x256 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-256x256.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 128x128 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-128x128.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 64x64 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-64x64.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 32x32 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-32x32.png $PRODUCT/$PRODUCT-icon-2048x2048.png

# Generate with black text
cp $PRODUCT/$PRODUCT-logo-black-2048x2048.png $OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-1024x1024.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-512x512.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 256x256 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-256x256.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 128x128 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-128x128.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 64x64 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-64x64.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
# Generate logos with black test
convert  $OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x2048.png -fuzz 1% -fill white -opaque black  $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-1024x1024.png $PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-512x512.png $PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 256x256 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-256x256.png $PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 128x128 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-128x128.png $PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 64x64 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-64x64.png $PRODUCT/$PRODUCT-logo-white-2048x2048.png
