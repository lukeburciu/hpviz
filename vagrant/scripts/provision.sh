#!/bin/bash
#
# provision.sh
#
#  20201017 stephen Eaton <sceaton@our.ecu.edu.au
#
#  quick and dirty provisioning script fot the HPViz vagrant environment
#
apt-get update
apt-get install python3 -y
apt-get install python3-pip -y
apt-get remove --purge python -y
apt-get remove --purge pip -y
#apt install --reinstall python-pkg-resources -y
apt-get autoremove -y
apt-get autoclean -y
