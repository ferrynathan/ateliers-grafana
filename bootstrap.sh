#!/usr/bin/env bash
apt-get update
apt-get install -y adduser libfontconfig1
wget https://dl.grafana.com/oss/release/grafana_7.5.5_amd64.deb
dpkg -i grafana_7.5.5_amd64.deb
systemctl enable grafana-server
systemctl start grafana-server
