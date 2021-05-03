#!/usr/bin/env bash
apt-get update
#install grafana
apt-get install -y adduser libfontconfig1
wget https://dl.grafana.com/oss/release/grafana_7.5.5_amd64.deb
dpkg -i grafana_7.5.5_amd64.deb
systemctl enable grafana-server
systemctl start grafana-server
#install influxdb
wget https://dl.influxdata.com/influxdb/releases/influxdb_1.8.5_amd64.deb
dpkg -i influxdb_1.8.5_amd64.deb
systemctl enable influxdb
systemctl start influxdb
