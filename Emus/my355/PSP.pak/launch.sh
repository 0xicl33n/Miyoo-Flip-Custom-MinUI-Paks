#!/bin/sh

ROM_FILE="$1"
THIS_DIR="$(dirname "$0")"

cd "$THIS_DIR"
export HOME="$THIS_DIR"

echo -1 > /sys/class/miyooio_chr_dev/joy_type
./PPSSPPSDL_Flip "$ROM_FILE"
echo 0 > /sys/class/miyooio_chr_dev/joy_type

# clear the FB to get rid of residual Loading screen if present
touch /tmp/fbdisplay_exit
cat /dev/zero > /dev/fb0