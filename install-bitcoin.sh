#!/data/data/com.termux/files/usr/bin/sh
pkg install -y bitcoin
mv ~/.bitcoin ~/.bitcoin.old
mkdir ~/storage/external-1/.bitcoin
cp bitcoin.conf ~/storage/external-1/.bitcoin/
ln -s ~/storage/external-1/.bitcoin ~/
