#!/usr/bin/env bash
sudo apt update && sudo apt install -y git
git clone -b stable/queens https://git.openstack.org/openstack-dev/devstack
cp /tmp/local.conf devstack/
cd devstack
./stack.sh
./unstack.sh
