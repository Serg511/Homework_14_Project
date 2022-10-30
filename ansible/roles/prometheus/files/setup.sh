#!/bin/bash

cd /tmp
sudo cp prometheus-2.39.1.linux-amd64/prometheus prometheus-2.39.1.linux-amd64/promtool /usr/local/bin/
sudo mkdir /etc/prometheus
sudo cp -r prometheus-2.39.1.linux-amd64/consoles/ /etc/prometheus/consoles
sudo cp -r prometheus-2.39.1.linux-amd64/console_libraries/ /etc/prometheus/console_libraries
sudo cp prometheus-2.39.1.linux-amd64/prometheus.yml /etc/prometheus/
sudo chown -R prometheus:prometheus /etc/prometheus
sudo mkdir /var/lib/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus
rm -rf ./prometheus-2.39.1.linux-amd64