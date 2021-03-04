#!/bin/sh
if [ ! -f workshop.bin ]; then
    echo "no workshop.bin file to flash!"
    exit -1
fi

# erase anything that's alerady on there
esptool.py erase_flash
# upload firmware
esptool.py --baud 460800 write_flash \
    --verify --flash_size=detect 0 workshop.bin
