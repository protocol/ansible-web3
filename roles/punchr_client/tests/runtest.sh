#!/bin/sh
# quick wrapper to execute a test playbook against the local machine. YMMV.

ANSIBLE_ROLES_PATH=`pwd`/../.. ansible-playbook -i ./inventory test.yml
