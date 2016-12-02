#!/bin/sh
################################################
# Script Name:     garage_pi_setup_script.sh
# Written by:      Michael H. Roberts
# Creation Date:   Thu 01 Dec 2016 @ 22:39:13
################################################

# Install scripts to activate the GPIO on the pi
sudo -S git clone git://git.drogon.net/wiringPi 
# Change directory into the newly cloned wiringPi
cd wiringPi 
# Build the wiringPi 
sudo -S ./build
# Change directory up one
cd 
# Clone the blynk library
git clone https://github.com/blynkkk/blynk-library.git
# Change directory into the blynk folder
cd blynk-library/linux
# Build the blynk system files
sudo -S make clean all target=raspberry
# Launch the blynk server ( Token is found through the application on the phone ) 
sudo -S ./blynk --token=a918e7c9f83844979c2afb27b8c9b702 
