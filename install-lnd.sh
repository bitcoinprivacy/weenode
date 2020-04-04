#!/data/data/com.termux/files/usr/bin/sh
pkg install -y lnd
mv ~/.lnd ~/.lnd.old
mkdir ~/storage/external-1/.lnd
cp lnd.conf ~/storage/external-1/.lnd/
ln -s ~/storage/external-1/.lnd ~/
