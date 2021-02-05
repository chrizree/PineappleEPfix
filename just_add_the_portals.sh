#!/bin/bash

# Script to just install the portals from GitHub straight to the Pineapple. No
# need to download the files to any intermediate device first and then scp them to
# the Pineapple.
#
# This assumes that the Pineapple has an active connection to the interwebz...
# Also remember to chmod +x (this file) to make it executable

opkg update

opkg install unzip

cd /root/portals

wget https://github.com/kbeflo/evilportals/archive/master.zip -O /root/portals/master.zip

unzip /root/portals/master.zip

mv /root/portals/evilportals-master/portals/* /root/portals/.

rm -r /root/portals/evilportals-master

rm /root/portals/master.zip

echo "Done! Reload the Evil Portal GUI on the Mk7 and the portals should now show!"
