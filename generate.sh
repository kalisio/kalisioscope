#!/bin/bash

PRODUCT=$1
OUTPUT=$2

# Generate logos
cp $PRODUCT/$PRODUCT-logo-black-2048x2048.png $OUTPUT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT-logo-black-1024x1024.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 512x512 -write $OUTPUT/$PRODUCT-logo-black-512x512.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 256x256 -write $OUTPUT/$PRODUCT-logo-black-256x256.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 128x128 -write $OUTPUT/$PRODUCT-logo-black-128x128.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 64x64 -write $OUTPUT/$PRODUCT-logo-black-64x64.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
