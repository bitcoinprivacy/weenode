# weenode
A wee node for all of us (thanks to @shawnyeager for the name!). Building the cheapest possible bitcoin fullnode (+lightning and other services) on old Android phones.

## How to use

Install termux on your device (e.g. via play store) and add whatever comforts you need (I recommend remote access via sshd, plus mosh and tmux). The script assumes you have an external SD card that it puts your data on. Then to get started do

```
pkg install git
git clone https://github.com/bitcoinprivacy/weenode.git
cd weenode
./install.sh
```
