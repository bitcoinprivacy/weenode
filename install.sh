#!$PREFIX/bin/sh
apt update && apt upgrade
termux-setup-storage
apt install -y termux-services
install-tor.sh
install-bitcoin.sh
install-lnd.sh
echo "if you hadn't installed termux-services before, please restart termux!"
echo "then, you can do sv-enable tor bitcoin lnd"

