#!/usr/bin/env bash

# printf 'TEXT 80, 49 \"'  && jp2a --size=80x49 mariapintado.jpeg && printf '\"'} | tee mariapintado.txt
# CX=80
# CY=49
CX=160
CY=100

echo $CX
echo $CY

CONTENT=`jp2a --size="$CX"x"$CY" mariapintado.jpeg`

# convert -size 2048x2048 xc:white -font "AndaleMono" -pointsize 16 -fill black -draw @mariapintado.txt image.png
# convert -size 2048x2048 xc:white -font "AndaleMono" -pointsize 16 -fill black -draw @mariapintado.txt image.png
# convert -size 2048x2048 xc:none  -box white  -pointsize 20 -gravity center \
#           -draw "text 0,0 \"$CONTENT\"" \
#           -trim +repage  text_special_sd.gif

convert -size 2048x2048 xc:black -font "AndaleMono" -pointsize 18 -fill white \
          -draw "text 0,0 \"$CONTENT\"" \
          -trim +repage  asciimaria.png
