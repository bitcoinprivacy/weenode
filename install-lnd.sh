#!$PREFIX/bin/sh
pkg install -y lnd
mkdir ~/storage/external-1/.lnd
ln -s lnd.conf storage/external-1/.lnd/
ln -s storage/external-1/.lnd ~/
sv-enable lnd
