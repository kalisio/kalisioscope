#!/usr/bin/env bash
set -euo pipefail
# set -x

for i in kaabah kano kalisio kargo; do
    ./generate.sh "$i" assets
done

for i in crisis field kapp kdk krawler maps planet skeleton teams watch weacast; do
    ./generate2.sh "$i" assets
done

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
