#!/bin/sh

read -p "Artist: " ARTIST
read -p "Album: " ALBUM
read -p "Link: " LINK

mkdir "$ARTIST" 
mkdir "$ARTIST/$ALBUM" 
cd "$ARTIST/$ALBUM"

youtube-dl -x --audio-format mp3 -o "%(playlist_index)s-%(title)s.%(ext)s" $LINK
