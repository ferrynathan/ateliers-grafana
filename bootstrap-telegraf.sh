#!/usr/bin/env bash
apt-get update
#install telegraf
wget https://dl.influxdata.com/telegraf/releases/telegraf_1.18.2-1_amd64.deb
dpkg -i telegraf_1.18.2-1_amd64.deb
systemctl enable telegraf
systemctl start telegraf
