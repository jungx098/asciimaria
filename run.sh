#!/usr/bin/env bash

# Ascii image size
# printf 'TEXT 80, 49 \"'  && jp2a --size=80x49 mariapintado.jpeg && printf '\"'} | tee mariapintado.txt
# CX=160
# CY=115

CX=80
CY=60

# Imagemagic font
# - Available fonts can be found by `convert -list font`
FONT='Courier'

CONTENT=`jp2a --size="$CX"x"$CY" mariapintado.jpeg`

convert -size 2048x2048 xc:black -font "$FONT" -pointsize 16 -fill white \
        -draw "text 0,0 \"$CONTENT\"" \
        -trim +repage  asciimaria.png

open asciimaria.png
