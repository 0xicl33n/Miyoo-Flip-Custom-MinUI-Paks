#!/bin/sh

export HOME="$(dirname "$0")"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/lib64

echo -1 > /sys/class/miyooio_chr_dev/joy_type

cd "$HOME"
./drastic64 "$1"

echo 0 > /sys/class/miyooio_chr_dev/joy_type
