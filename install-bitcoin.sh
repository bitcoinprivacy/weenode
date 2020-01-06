#!$PREFIX/bin/sh
pkg install -y bitcoin
mkdir ~/storage/external-1/.bitcoin
ln -s bitcoin.conf storage/external-1/.bitcoin/
ln -s storage/external-1/.bitcoin ~/
sv-enable bitcoind
