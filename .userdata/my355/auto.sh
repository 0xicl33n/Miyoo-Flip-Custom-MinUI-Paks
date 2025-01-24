#!/bin/sh

# Set these to a number between 0 and 100, in multiples of 5.
# The default values are 50.

BRIGHTNESS=50
HUE=50
SATURATION=50
CONTRAST=50

###############################\
 #>- No touchy below this line! >
###############################/

modetest -M rockchip -a -w 179:brightness:$BRIGHTNESS -w 179:hue:$HUE -w 179:saturation:$SATURATION -w 179:contrast:$CONTRAST

SKIN=/usr/miyoo/bin/skin
for IMAGE in app_loading_01.png app_loading_02.png app_loading_03.png app_loading_04.png app_loading_05.png app_loading_bg.png; do

	mount --bind "$SKIN/background.png" "$SKIN/$IMAGE"

done