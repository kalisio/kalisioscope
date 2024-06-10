#!/bin/bash

PRODUCT=$1
OUTPUT=$2

mkdir -p $OUTPUT/$PRODUCT

# Generate icons
cp $PRODUCT/$PRODUCT-icon-2048x2048.png $OUTPUT/$PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-1024x1024.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-512x512.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 256x256 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-256x256.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 192x192 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-192x192.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 128x128 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-128x128.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 64x64 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-64x64.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 48x48 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-48x48.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 32x32 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-32x32.png $PRODUCT/$PRODUCT-icon-2048x2048.png
mogrify -resize 24x24 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-24x24.png $PRODUCT/$PRODUCT-icon-2048x2048.png

# Generate square logos with black text
cp $PRODUCT/$PRODUCT-logo-black-2048x2048.png $OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-1024x1024.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-512x512.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 256x256 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-256x256.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 192x192 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-192x192.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 128x128 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-128x128.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
mogrify -resize 64x64 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-64x64.png $PRODUCT/$PRODUCT-logo-black-2048x2048.png
# Generate square logos with white text
convert  $OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x2048.png -fuzz 1% -fill white -opaque black  $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-1024x1024.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-512x512.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 256x256 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-256x256.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 192x192 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-192x192.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 128x128 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-128x128.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x2048.png
mogrify -resize 64x64 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-64x64.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x2048.png

# Generate banner logos with black text
cp $PRODUCT/$PRODUCT-logo-black-2048x672.png $OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x672.png
mogrify -resize 1024x336 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-1024x336.png $PRODUCT/$PRODUCT-logo-black-2048x672.png
mogrify -resize 512x168 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-512x168.png $PRODUCT/$PRODUCT-logo-black-2048x672.png
mogrify -resize 256x84 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-256x84.png $PRODUCT/$PRODUCT-logo-black-2048x672.png
mogrify -resize 192x64 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-192x64.png $PRODUCT/$PRODUCT-logo-black-2048x672.png
mogrify -resize 128x42 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-black-128x42.png $PRODUCT/$PRODUCT-logo-black-2048x672.png
# Generate banner logos with white text
convert  $OUTPUT/$PRODUCT/$PRODUCT-logo-black-2048x672.png -fuzz 1% -fill white -opaque black  $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x672.png
mogrify -resize 1024x336 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-1024x336.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x672.png
mogrify -resize 512x168 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-512x168.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x672.png
mogrify -resize 256x84 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-256x84.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x672.png
mogrify -resize 192x64 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-192x64.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x672.png
mogrify -resize 128x42 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-white-128x42.png $OUTPUT/$PRODUCT/$PRODUCT-logo-white-2048x672.png
