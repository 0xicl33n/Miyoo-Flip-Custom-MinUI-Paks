#!/bin/sh

RA_DIR="$(dirname "$0")"
RA_BIN="ra64.miyoo"
CORE_DIR="$RA_DIR/.retroarch/cores64"

ROM_FILE="$1"
CORE_NAME="$2"

CORE_PATH="$CORE_DIR/${CORE_NAME}_libretro.so"

cd "$RA_DIR"
echo -1 > /sys/class/miyooio_chr_dev/joy_type

if [ -z "$ROM_FILE" ] || [ -z "$CORE_NAME" ]; then
	HOME="$RA_DIR/" "$RA_DIR/$RA_BIN" -v
else
	HOME="$RA_DIR/" "$RA_DIR/$RA_BIN" -v -L "$CORE_PATH" "$ROM_FILE"
fi

echo 0 > /sys/class/miyooio_chr_dev/joy_type
