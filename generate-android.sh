#!/bin/bash

PRODUCT=$1
OUTPUT=$2
BACKGROUND=$3

mkdir -p $OUTPUT/$PRODUCT/android

# Icons
ICON_INPUT=$PRODUCT/$PRODUCT-icon-2048x2048.png
CONVERT="convert $ICON_INPUT -background $BACKGROUND"
$CONVERT -resize 36x36 $OUTPUT/$PRODUCT/android/icon-36-ldpi.png
$CONVERT -resize 48x48 $OUTPUT/$PRODUCT/android/icon-48-mdpi.png
$CONVERT -resize 72x72 $OUTPUT/$PRODUCT/android/icon-72-hdpi.png
$CONVERT -resize 96x96 $OUTPUT/$PRODUCT/android/icon-96-xhdpi.png
$CONVERT -resize 144x144 $OUTPUT/$PRODUCT/android/icon-144-xxhdpi.png
$CONVERT -resize 192x192 $OUTPUT/$PRODUCT/android/icon-192-xxxhdpi.png

# Screens
SCREEN_INPUT=$PRODUCT/$PRODUCT-logo-black-2048x2048.png
CONVERT="convert $SCREEN_INPUT -background $BACKGROUND -gravity center"
$CONVERT -resize 512x512 -extent 1280x720 $OUTPUT/$PRODUCT/android/screen-xhdpi-landscape.png
$CONVERT -resize 128x128 -extent 320x200 $OUTPUT/$PRODUCT/android/screen-ldpi-landscape.png
$CONVERT -resize 256x256 -extent 480x320 $OUTPUT/$PRODUCT/android/screen-mdpi-landscape.png
$CONVERT -resize 256x256 -extent 800x480 $OUTPUT/$PRODUCT/android/screen-hdpi-landscape.png

$CONVERT -resize 256x256 -extent 480x800 $OUTPUT/$PRODUCT/android/screen-hdpi-portrait.png
$CONVERT -resize 512x512 -extent 720x1280 $OUTPUT/$PRODUCT/android/screen-xhdpi-portrait.png
$CONVERT -resize 256x256 -extent 320x480 $OUTPUT/$PRODUCT/android/screen-mdpi-portrait.png
$CONVERT -resize 128x128 -extent 200x320 $OUTPUT/$PRODUCT/android/screen-ldpi-portrait.png

