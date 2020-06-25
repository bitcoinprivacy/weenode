# weenode
A wee node for all of us (thanks to @shawnyeager for the name!). Building the cheapest possible bitcoin fullnode (+lightning and other services) on old Android phones. This project aims to automate most of the setup described [in three blog posts here](https://blog.bitcoinprivacy.net/2019/12/20/news-from-the-cheapnode-project/).

## Requirements

You will need an Android device (doesn't have to be a phone!) that is capable of running Termux. This means you should probably get Android 7 or later running (There might be a Lineage OS or similar ROM available for older devices). Android 5 will work in a pinch, but Termux doesn't support that anymore, so you might need to manually get an old Termux apk and old packages for that. 

For running bitcoind, you will probably need at least 1GB of RAM. More is better, especially if you plan on running extra services like a lightning node. 

Notice that if you want to use the device as a server instead of carrying it around, defects like a cracked screen, broken touchscreen (use a mouse on an OTG USB cable for setup!), or dead battery don't matter at all. So this is a perfect upcycling opportunity for devices that have decent computing power and RAM but aren't usable for their original purpose anymore. If you don't have some of these lying around, you should be able to buy a second hand one for very little money. 

For the setup you will need to get comfortable with the linux command line, but otherwise it's pretty straightforward. The result is the cheapest and most ecologically sustainable (used devices plus about 2W power usage!) fully sovereign always-on Bitcoin/Lightning/whatever node imaginable. 

## How to use

Install termux on your device (e.g. via play store or F-Droid) and add whatever comforts you need (I recommend remote access via sshd, plus mosh and tmux). The script assumes you have an external SD card that it puts your data on. Then to get started do

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

and they will even be restarted if they somehow terminate or you restart termux. You can find the logs under `$LOGDIR/sv`, so you might e.g. do something like:

```
tail -f $LOGDIR/sv/bitcoind/current
```

The `bitcoin.conf` file here gives you a pruned node that needs at least a 128GB SD card (high endurance card recommended). Of course you can adapt this to your needs, but this should be good enough to back a lightning node at the moment.
