#!/usr/bin/env bash
echo iptables-persistent iptables-persistent/autosave_v4 boolean true | sudo debconf-set-selections
echo iptables-persistent iptables-persistent/autosave_v6 boolean true | sudo debconf-set-selections

sudo apt update && sudo apt install -y git uuid-runtime iptables iptables-persistent
git clone -b stable/queens https://git.openstack.org/openstack-dev/devstack
cp /tmp/local.conf devstack/
cd devstack
./stack.sh
./unstack.sh
