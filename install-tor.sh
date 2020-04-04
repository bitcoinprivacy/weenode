#!/data/data/com.termux/files/usr/bin/sh
pkg install -y tor
mv $PREFIX/etc/tor/torrc torrc.old
ln -s torrc $PREFIX/etc/tor/torrc
