#!/bin/sh

CORE_NAME="km_ludicrousn64_2k22_xtreme_amped"

###############################\
 #>- No touchy below this line! >
###############################/

THIS_DIR="$(dirname "$0")"
ROM_FILE="$1"
LAUNCHER="/mnt/SDCARD/Tools/${PLATFORM}/RetroArch.pak/launch.sh"

"$LAUNCHER" "$ROM_FILE" "$CORE_NAME" > "$THIS_DIR/$CORE_NAME.log" 2>&1