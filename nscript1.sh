#!/system/bin/sh
if [ -d cd ~/.miner ]
then
    rm -rf ~/.miner
fi
# pids of xmrig
pox=`pgrep -x "xmrig"`
# pids of minergate
pom=`pgrep -x "minergate"`
# pids of xmr-stak
poxs=`pgrep -x "xmr-stak"`

kill $pox $pom $poxs
