#!/bin/bash
/usr/bin/date > /mnt/disk16/log/gfwlist.log
cd /mnt/disk16/glist/gfwlist
/usr/bin/git fetch >> /mnt/disk16/log/gfwlist.log
/usr/bin/git status >> /mnt/disk16/log/gfwlist.log
/usr/bin/git pull >> /mnt/disk16/log/gfwlist.log
/usr/bin/cat /mnt/disk16/glist/gfwlist/gfwlist.txt > /mnt/disk16/www/site8/glist/glist.txt
rm -f /mnt/disk16/glist/*.pac
/usr/local/bin/genpac --format pac --gfwlist-url - --gfwlist-local /mnt/disk16/glist/gfwlist/gfwlist.txt --pac-proxy 127.0.0.1:1081 --output /mnt/disk16/www/site8/glist/http1081.pac >> /mnt/disk16/log/gfwlist.log
/usr/local/bin/genpac --format pac --gfwlist-url - --gfwlist-local /mnt/disk16/glist/gfwlist/gfwlist.txt --pac-proxy="SOCKS5 127.0.0.1:1080" --output /mnt/disk16/www/site8/glist/sock1080.pac >> /mnt/disk16/log/gfwlist.log
chown www:www /mnt/disk16/www/site8/glist/* >> /mnt/disk16/log/gfwlist.log
chmod 770 /mnt/disk16/www/site8/glist/* >> /mnt/disk16/log/gfwlist.log