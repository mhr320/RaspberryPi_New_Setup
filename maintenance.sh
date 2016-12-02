#!/bin/sh
################################################
# Script Name:     user_pi_setup.sh
# Written by:      Michael H. Roberts
# Creation Date:   Thu 01 Dec 2016 @ 22:44:23
################################################

echo "Mosey@5641" | sudo -S apt-get -y update
echo "Mosey@5641" | sudo -S apt-get -y upgrade
echo "Mosey@5641" | sudo -S apt-get -y autoremove
echo "Mosey@5641" | sudo -S apt-get -y autoclean
