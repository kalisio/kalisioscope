#!/bin/bash

PRODUCT=$1
OUTPUT=$2
BACKGROUND=$3

# Icons
mkdir -p $OUTPUT/$PRODUCT/ios/icons
ICON_INPUT=$PRODUCT/$PRODUCT-icon-2048x2048.png
CONVERT="convert $ICON_INPUT -background $BACKGROUND -alpha remove -alpha off"
$CONVERT -resize 29x29 $OUTPUT/$PRODUCT/ios/icons/icon-small.png
$CONVERT -resize 58x58 $OUTPUT/$PRODUCT/ios/icons/icon-small-2x.png
$CONVERT -resize 87x87 $OUTPUT/$PRODUCT/ios/icons/icon-small-3x.png
$CONVERT -resize 40x40 $OUTPUT/$PRODUCT/ios/icons/icon-40.png
$CONVERT -resize 80x80 $OUTPUT/$PRODUCT/ios/icons/icon-40-2x.png
$CONVERT -resize 120x120 $OUTPUT/$PRODUCT/ios/icons/icon-40-3x.png
$CONVERT -resize 50x50 $OUTPUT/$PRODUCT/ios/icons/icon-50.png
$CONVERT -resize 100x100 $OUTPUT/$PRODUCT/ios/icons/icon-50-2x.png
$CONVERT -resize 57x57 $OUTPUT/$PRODUCT/ios/icons/icon-57.png
$CONVERT -resize 114x114 $OUTPUT/$PRODUCT/ios/icons/icon-57-2x.png
$CONVERT -resize 60x60 $OUTPUT/$PRODUCT/ios/icons/icon-60.png
$CONVERT -resize 120x120 $OUTPUT/$PRODUCT/ios/icons/icon-60-2x.png
$CONVERT -resize 180x180 $OUTPUT/$PRODUCT/ios/icons/icon-60-3x.png
$CONVERT -resize 72x72 $OUTPUT/$PRODUCT/ios/icons/icon-72.png
$CONVERT -resize 144x144 $OUTPUT/$PRODUCT/ios/icons/icon-72-2x.png
$CONVERT -resize 76x76 $OUTPUT/$PRODUCT/ios/icons/icon-76.png
$CONVERT -resize 152x152 $OUTPUT/$PRODUCT/ios/icons/icon-76-2x.png
$CONVERT -resize 167x167 $OUTPUT/$PRODUCT/ios/icons/icon-83.5-2x.png

# Screens
mkdir -p $OUTPUT/$PRODUCT/ios/screens
SCREEN_INPUT=$PRODUCT/$PRODUCT-logo-black-2048x2048.png
CONVERT="convert $SCREEN_INPUT -background $BACKGROUND -alpha remove -alpha off -gravity center"
$CONVERT -resize 512x512 -extent 640x1136 $OUTPUT/$PRODUCT/ios/screens/screen-iphone-568h-2x.png
$CONVERT -resize 256x256 -extent 320x480 $OUTPUT/$PRODUCT/ios/screens/screen-iphone-portrait.png
$CONVERT -resize 256x256 -extent 640x960 $OUTPUT/$PRODUCT/ios/screens/screen-iphone-portrait-2x.png
$CONVERT -resize 512x512 -extent 750x1334 $OUTPUT/$PRODUCT/ios/screens/screen-iphone-portrait-667h.png
$CONVERT -resize 1024x1024 -extent 1242x2208 $OUTPUT/$PRODUCT/ios/screens/screen-iphone-portrait-736h.png
$CONVERT -resize 1024x1024 -extent 2208x1242 $OUTPUT/$PRODUCT/ios/screens/screen-iphone-landscape-736h.png
$CONVERT -resize 512x512 -extent 768x1004 $OUTPUT/$PRODUCT/ios/screens/screen-ipad-portrait.png
$CONVERT -resize 1024x1024 -extent 1536x2048 $OUTPUT/$PRODUCT/ios/screens/screen-ipad-portrait-2x.png
$CONVERT -resize 512x512 -extent 1024x768 $OUTPUT/$PRODUCT/ios/screens/screen-ipad-landscape.png
$CONVERT -resize 1024x1024 -extent 2048x1536 $OUTPUT/$PRODUCT/ios/screens/screen-ipad-landscape-2x.png
$CONVERT -resize 2048x2048 -extent 2737x2048 $OUTPUT/$PRODUCT/ios/screens/screen-ipad-landscape-ipadpro.png
$CONVERT -resize 2048x2048 -extent 2048x2732 $OUTPUT/$PRODUCT/ios/screens/screen-ipad-portrait-ipadpro.png
