# weenode
A wee node for all of us (thanks to @shawnyeager for the name!). Building the cheapest possible bitcoin fullnode (+lightning and other services) on old Android phones. This project aims to automate most of the setup described [in three blog posts here](https://blog.bitcoinprivacy.net/2019/12/20/news-from-the-cheapnode-project/).

## How to use

Install termux on your device (e.g. via play store) and add whatever comforts you need (I recommend remote access via sshd, plus mosh and tmux). The script assumes you have an external SD card that it puts your data on. Then to get started do

```
pkg install git
git clone https://github.com/bitcoinprivacy/weenode.git
cd weenode
./install.sh
```

If you didn't have termux-services installed before you should restart termux now. Then you can start all the services using

```
sv-enable tor bitcoind lnd
```

and they will even be restarted if they somehow terminate or you restart termux. 

The `bitcoin.conf` file here gives you a pruned node that needs at least a 128GB SD card (high endurance card recommended). Of course you can adapt this to your needs, but this should be good enough to back a lightning node at the moment.
