#!/bin/bash
#
#
cd ../../
ansible-playbook -i dev.ini site.yml --vault-password-file ~/.hpviz-vault
