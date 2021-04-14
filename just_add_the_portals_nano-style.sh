#!/bin/bash

# Script to just install the portals from GitHub straight to the Pineapple. No
# need to download the files to any intermediate device first and then scp them to
# the Pineapple Nano.
#
# NOTE! You need an SD card for this to work. All portals won't fit inside the Nano internal storage...
#
# To get this bash script to the Pineapple, just execute:
# wget https://raw.githubusercontent.com/chrizree/PineappleEPfix/main/just_add_the_portals_nano-style.sh
#
# This assumes that the Pineapple has an active connection to the interwebz...
# Also remember to chmod +x (bash file name) to make it executable

opkg update

opkg install unzip

mkdir -p /sd/portals

cd /sd/portals

wget https://github.com/kbeflo/evilportals/archive/master.zip -O /sd/portals/master.zip

unzip /sd/portals/master.zip

mv /sd/portals/evilportals-master/portals/* /sd/portals/.

rm -r /sd/portals/evilportals-master

rm /sd/portals/master.zip

echo ""
echo ""
echo "Done! Now update the Evil Portal module GUI on the Nano and the portals should be displayed..."
echo ""

