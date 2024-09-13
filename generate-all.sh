#!/usr/bin/env bash
set -euo pipefail
# set -x

## Generate kalisio icons
##

for i in kaabah kano kalisio kargo; do
    ./generate.sh "$i" assets
done

for i in crisis field kapp kdk krawler maps planet skeleton teams watch weacast; do
    ./generate2.sh "$i" assets
done

## Other assets
##

THIS_FILE=$(readlink -f "${BASH_SOURCE[0]}")
THIS_DIR=$(dirname "$THIS_FILE")
TMP_DIR=$(mktemp -d -p "${XDG_RUNTIME_DIR:-}" kalisio.XXXXXX)
OUT_DIR="$THIS_DIR/assets/others"

mkdir -p "$OUT_DIR"

SVG_URLS=(
    "https://upload.wikimedia.org/wikipedia/commons/7/79/NOAA_logo.svg"
    "https://hubeau.eaufrance.fr/themes/custom/hubeau/images/logos/logo-hubeau-blue.svg"
    "https://www.rte-france.com/themes/swi/images/components/header/logo-rte.svg"
    "https://www.vigicrues.gouv.fr/assets/images/vigicrues.svg"
    "https://vigilance.meteofrance.fr/themes/custom/theme_vigilance/dist/img/logo.svg"
    "https://upload.wikimedia.org/wikipedia/commons/a/a0/IGN_logo_2012.svg"
    "https://upload.wikimedia.org/wikipedia/commons/c/c6/MapServer_logo.svg"
    "https://qgis.org/img/logosign.svg"
    "https://upload.wikimedia.org/wikipedia/commons/d/df/ArcGIS_logo.png"
)
SVG_NAMES=(
    "noaa"
    "hubeau"
    "rte"
    "vigicrues"
    "meteofrance"
    "ign"
    "mapserver"
    "qgis"
    "arcgis"
)

# Download svg, then convert to png
for (( i=0; i<${#SVG_URLS[@]}; i++ )); do
    SVG_IN="$TMP_DIR/${SVG_NAMES[$i]}.svg"
    PNG_OUT="$OUT_DIR/${SVG_NAMES[$i]}.png"
    wget --no-check-certificate -O "$SVG_IN" "${SVG_URLS[$i]}"
    convert -background none -density 1024 -resize 1024x "$SVG_IN" "$PNG_OUT"
done

PNG_URLS=(
    "https://raw.githubusercontent.com/openradiation/openradiation-mobile/master/resources/icon.png"
    "http://teleray.irsn.fr/theme/images/bandeau_Title.png"
    "http://tileserver.org/images/logo.png"
    "https://www.unidata.ucar.edu/images/logos/thredds_tds-400x400.png"
)
PNG_NAMES=(
    "openradiation"
    "teleray"
    "tileservergl"
    "thredds"
)

# Just download png
for (( i=0; i<${#PNG_URLS[@]}; i++ )); do
    PNG_IN="$TMP_DIR/${PNG_NAMES[$i]}.png"
    PNG_OUT="$OUT_DIR/${PNG_NAMES[$i]}.png"
    wget --no-check-certificate -O "$PNG_IN" "${PNG_URLS[$i]}"
    # convert -background none -density 1024 -resize 1024x "$SVG_IN" "$PNG_OUT"
    cp "$PNG_IN" "$PNG_OUT"
done

rm -fR "$TMP_DIR"

## Upload to public bucket
##

# Use rclone to copy on remote location
sudo apt-get --no-install-recommends --yes install rclone

export RCLONE_CONFIG_STORE_TYPE="s3"
export RCLONE_CONFIG_STORE_PROVIDER="Other"
export RCLONE_CONFIG_STORE_REGION="gra"
export RCLONE_CONFIG_STORE_ENDPOINT="https://s3.gra.cloud.ovh.net/"
# These are defined as secrets in the CI
# export RCLONE_CONFIG_STORE_ACCESS_KEY_ID=""
# export RCLONE_CONFIG_STORE_SECRET_ACCESS_KEY=""
rclone copy assets store:kalisioscope --stats 5s --stats-log-level NOTICE --stats-one-line
