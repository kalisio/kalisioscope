#!/bin/bash

PRODUCT=$1
OUTPUT=$2

mkdir -p $OUTPUT/$PRODUCT

for STYLE in black color white grey; do

  # Generate icons
  cp $PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png $OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png
  mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-1024x1024.png $PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png
  mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-512x512.png $PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png
  mogrify -resize 384x384 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-384x384.png $PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png
  mogrify -resize 256x256 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-256x256.png $PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png
  mogrify -resize 192x192 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-192x192.png $PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png
  mogrify -resize 128x128 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-128x128.png $PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png
  mogrify -resize 64x64 -write $OUTPUT/$PRODUCT/$PRODUCT-icon-$STYLE-64x64.png $PRODUCT/$PRODUCT-icon-$STYLE-2048x2048.png

  # Generate square logos 
  cp $PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png
  mogrify -resize 1024x1024 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-1024x1024.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png
  mogrify -resize 512x512 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-512x512.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png
  mogrify -resize 384x384 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-384x384.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png
  mogrify -resize 256x256 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-256x256.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png
  mogrify -resize 192x192 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-192x192.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png
  mogrify -resize 128x128 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-128x128.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png
  mogrify -resize 64x64 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-64x64.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x2048.png

  # Generate banner logos 
  convert -crop 2048x768+0+128 $PRODUCT/$PRODUCT-logo-$STYLE-2048x1024.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png
  cp $PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png
  mogrify -resize 1024x384 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-1024x384.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png
  mogrify -resize 512x192 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-512x192.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png
  mogrify -resize 384x144 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-384x144.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png
  mogrify -resize 256x96 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-256x96.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png
  mogrify -resize 192x64 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-192x64.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png
  mogrify -resize 128x48 -write $OUTPUT/$PRODUCT/$PRODUCT-logo-$STYLE-128x48.png $PRODUCT/$PRODUCT-logo-$STYLE-2048x768.png

done