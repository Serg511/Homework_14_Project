#!/bin/bash

cd /tmp
cp node_exporter-1.4.0.linux-amd64/node_exporter /usr/local/bin/
rm -rf node_exporter-{{ node_exporter_version }}.linux-amd64