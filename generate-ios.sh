#!/bin/bash

PRODUCT=$1
OUTPUT=$2
BACKGROUND=$3

mkdir -p $OUTPUT/$PRODUCT/ios

# Icons
ICON_INPUT=$PRODUCT/$PRODUCT-icon-2048x2048.png
CONVERT="convert $ICON_INPUT -background $BACKGROUND alpha remove -alpha off"
$CONVERT -resize 20x20 $OUTPUT/$PRODUCT/ios/icon-20.png
$CONVERT -resize 40x40 $OUTPUT/$PRODUCT/ios/icon-20@2x.png
$CONVERT -resize 60x60 $OUTPUT/$PRODUCT/ios/icon-20@3x.png
$CONVERT -resize 40x40 $OUTPUT/$PRODUCT/ios/icon-40.png
$CONVERT -resize 80x80 $OUTPUT/$PRODUCT/ios/icon-40@2x.png
$CONVERT -resize 50x50 $OUTPUT/$PRODUCT/ios/icon-50.png
$CONVERT -resize 100x100 $OUTPUT/$PRODUCT/ios/icon-50@2x.png
$CONVERT -resize 120x120 $OUTPUT/$PRODUCT/ios/icon-60@2x.png
$CONVERT -resize 180x180 $OUTPUT/$PRODUCT/ios/icon-60@3x.png
$CONVERT -resize 72x72 $OUTPUT/$PRODUCT/ios/icon-72.png
$CONVERT -resize 144x144 $OUTPUT/$PRODUCT/ios/icon-72@2x.png
$CONVERT -resize 76x76 $OUTPUT/$PRODUCT/ios/icon-76.png
$CONVERT -resize 152x152 $OUTPUT/$PRODUCT/ios/icon-76@2x.png
$CONVERT -resize 167x167 $OUTPUT/$PRODUCT/ios/icon-83.5@2x.png
$CONVERT -resize 1024x1024 $OUTPUT/$PRODUCT/ios/icon-1024.png
$CONVERT -resize 29x29 $OUTPUT/$PRODUCT/ios/icon-small.png
$CONVERT -resize 58x58 $OUTPUT/$PRODUCT/ios/icon-small@2x.png
$CONVERT -resize 87x87 $OUTPUT/$PRODUCT/ios/icon-small@3x.png
$CONVERT -resize 57x57 $OUTPUT/$PRODUCT/ios/icon.png
$CONVERT -resize 114x114 $OUTPUT/$PRODUCT/ios/icon@2x.png
$CONVERT -resize 48x48 $OUTPUT/$PRODUCT/ios/AppIcon24x24@2x.png
$CONVERT -resize 55x55 $OUTPUT/$PRODUCT/ios/AppIcon27.5x27.5@2x.png
$CONVERT -resize 58x58 $OUTPUT/$PRODUCT/ios/AppIcon29x29@2x.png
$CONVERT -resize 87x87 $OUTPUT/$PRODUCT/ios/AppIcon29x29@3x.png
$CONVERT -resize 80x80 $OUTPUT/$PRODUCT/ios/AppIcon40x40@2x.png
$CONVERT -resize 88x88 $OUTPUT/$PRODUCT/ios/AppIcon44x44@2x.png
$CONVERT -resize 172x172 $OUTPUT/$PRODUCT/ios/AppIcon86x86@2x.png
$CONVERT -resize 196x196 $OUTPUT/$PRODUCT/ios/AppIcon98x98@2x.png

# Screens
SCREEN_INPUT=$PRODUCT/$PRODUCT-logo-black-2048x2048.png
CONVERT="convert $SCREEN_INPUT -background $BACKGROUND -gravity center"
$CONVERT -resize 256x256 -extent 320x480 $OUTPUT/$PRODUCT/ios/screen-iphone-portrait.png
$CONVERT -resize 256x256 -extent 640x960 $OUTPUT/$PRODUCT/ios/screen-iphone-portrait-2x.png
$CONVERT -resize 256x256 -extent 480x320 $OUTPUT/$PRODUCT/ios/screen-iphone-landscape.png
$CONVERT -resize 256x256 -extent 960x640 $OUTPUT/$PRODUCT/ios/screen-iphone-landscape-2x.png
$CONVERT -resize 512x512 -extent 768x1004 $OUTPUT/$PRODUCT/ios/screen-ipad-portrait.png
$CONVERT -resize 1024x1024 -extent 1536x2008 $OUTPUT/$PRODUCT/ios/screen-ipad-portrait-2x.png
$CONVERT -resize 512x512 -extent 1024x783 $OUTPUT/$PRODUCT/ios/screen-ipad-landscape.png
$CONVERT -resize 1024x1024 -extent 2008x1536 $OUTPUT/$PRODUCT/ios/screen-ipad-landscape-2x.png