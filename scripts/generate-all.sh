#!/usr/bin/env bash

for i in kaabah kano kalisio kargo; do
    ./scripts/generate.sh "$i" output
done

for i in crisis field kapp kdk krawler maps planet skeleton teams watch weacast; do
    ./scripts/generate2.sh "$i" output
done
