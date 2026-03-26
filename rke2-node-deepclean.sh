#!/bin/bash
# rke2-(server|agent) related
rke2-killall.sh
rke2-uninstall.sh
# rancher-system-agent related
systemctl stop rancher-system-agent.service
systemctl disable rancher-system-agent.service
rm -f /etc/systemd/system/rancher-system-agent.service
rm -f /etc/systemd/system/rancher-system-agent.env
systemctl daemon-reload
rm -f /usr/local/bin/rancher-system-agent
rm -rf /etc/rancher/
rm -rf /var/lib/rancher/
rm -rf /usr/local/bin/rke2*
