#!/usr/bin/env bash

DIR=$HOME/Pictures/Wallpaper
COLLECTION_ID=540518
URL=https://source.unsplash.com/collection/$COLLECTION_ID/1440x900

echo "Downloading $URL"
curl -o "$DIR/current.jpg" -J -L "$URL" > /dev/null 2>&1

rm -rf $HOME/.cache/wal
wal -c
wal -i "$DIR/current.jpg" -e --vte
