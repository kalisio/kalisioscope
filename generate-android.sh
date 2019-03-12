#!/bin/bash

PRODUCT=$1
OUTPUT=$2
BACKGROUND=$3

# Icons
mkdir -p $OUTPUT/$PRODUCT/android/icons
ICON_INPUT=$PRODUCT/$PRODUCT-icon-2048x2048.png
CONVERT="convert $ICON_INPUT -background none"
$CONVERT -resize 36x36 $OUTPUT/$PRODUCT/android/icons/icon-36-ldpi.png
$CONVERT -resize 48x48 $OUTPUT/$PRODUCT/android/icons/icon-48-mdpi.png
$CONVERT -resize 72x72 $OUTPUT/$PRODUCT/android/icons/icon-72-hdpi.png
$CONVERT -resize 96x96 $OUTPUT/$PRODUCT/android/icons/icon-96-xhdpi.png
$CONVERT -resize 144x144 $OUTPUT/$PRODUCT/android/icons/icon-144-xxhdpi.png
$CONVERT -resize 192x192 $OUTPUT/$PRODUCT/android/icons/icon-192-xxxhdpi.png

# Screens
mkdir -p $OUTPUT/$PRODUCT/android/screens
SCREEN_INPUT=$PRODUCT/$PRODUCT-logo-black-2048x2048.png
CONVERT="convert $SCREEN_INPUT -background none -gravity center"
$CONVERT -resize 256x256 -extent 800x480 $OUTPUT/$PRODUCT/android/screens/screen-hdpi-landscape.png
$CONVERT -resize 128x128 -extent 320x200 $OUTPUT/$PRODUCT/android/screens/screen-ldpi-landscape.png
$CONVERT -resize 256x256 -extent 480x320 $OUTPUT/$PRODUCT/android/screens/screen-mdpi-landscape.png
$CONVERT -resize 512x512 -extent 1280x720 $OUTPUT/$PRODUCT/android/screens/screen-xhdpi-landscape.png
$CONVERT -resize 512x512 -extent 1600x960 $OUTPUT/$PRODUCT/android/screens/screen-xxhdpi-landscape.png
$CONVERT -resize 1024x1024 -extent 1920x1280 $OUTPUT/$PRODUCT/android/screens/screen-xxxhdpi-landscape.png

$CONVERT -resize 256x256 -extent 480x800 $OUTPUT/$PRODUCT/android/screens/screen-hdpi-portrait.png
$CONVERT -resize 128x128 -extent 200x320 $OUTPUT/$PRODUCT/android/screens/screen-ldpi-portrait.png
$CONVERT -resize 256x256 -extent 320x480 $OUTPUT/$PRODUCT/android/screens/screen-mdpi-portrait.png
$CONVERT -resize 512x512 -extent 720x1280 $OUTPUT/$PRODUCT/android/screens/screen-xhdpi-portrait.png
$CONVERT -resize 512x512 -extent 960x1600 $OUTPUT/$PRODUCT/android/screens/screen-xxhdpi-portrait.png
$CONVERT -resize 1024x1024 -extent 1280x1920 $OUTPUT/$PRODUCT/android/screens/screen-xxxhdpi-portrait.png

# Store
mkdir -p $OUTPUT/$PRODUCT/android/store
ICON_INPUT=$PRODUCT/$PRODUCT-icon-2048x2048.png
CONVERT="convert $ICON_INPUT -background none"
$CONVERT -resize 512x512 $OUTPUT/$PRODUCT/android/store/icon.png
LOGO_INPUT=$PRODUCT/$PRODUCT-logo-black-2048x2048.png
CONVERT="convert $LOGO_INPUT -background $BACKGROUND -gravity center"
$CONVERT -resize 500x500 -extent 1024x500 $OUTPUT/$PRODUCT/android/store/image.png