#!$PREFIX/bin/sh
pkg install -y tor
cp $PREFIX/etc/tor/torrc torrc.old
ln -s torrc $PREFIX/etc/tor/torrc
sv-enable tor

