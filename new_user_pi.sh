#!/bin/sh
################################################
# Script Name:     new_user_pi.sh
# Written by:      Michael H. Roberts
# Creation Date:   Thu 01 Dec 2016 @ 22:49:47
################################################

#!/bin/sh 

set -x

User=digitalspanks
SCPTS=/home/$User/.scripts
MAINT=/home/$User/.scripts/maintainer

# Script to help setup pi with my commonly used scripts and files. 

# Install vim, uncomment line below to install
#sudo apt-get -y install vim

# Install git-core so we can clone from git, uncomment line below
#sudo apt-get -y install git-core 

# Create user michael
sudo adduser $User 

# Add michael to specific groups
sudo usermod -a -G adm,dialout,cdrom,sudo,audio,video,plugdev,games,users,input,netdev,spi,i2c,gpio $User

# Create .scripts directory
sudo mkdir $SCPTS

# Chown the .scripts directory
sudo chown $User:$User $SCPTS

# Create maintenance script
sudo touch $MAINT

# Change ownership of maintenance script
sudo chmod 722 $MAINT

# Adds necessary text to maintenance script
sudo echo '#!/bin/sh' >> $MAINT
sudo echo >> $MAINT
sudo echo 'sudo  apt-get -y update' >> $MAINT
sudo echo 'sudo  apt-get -y upgrade' >> $MAINT
sudo echo 'sudo  apt-get -y autoremove' >> $MAINT
sudo echo 'sudo  apt-get -y autoclean' >> $MAINT

# Change ownership of maintenance script
sudo chown $User:$User $MAINT

# Makes maintenance script executable
sudo chmod 755 $MAINT

###############

# TODO: Add /home/$User/.scripts to $PATH
# sudo chmod 722 /home/$User/.bashrc
# echo export PATH="/home/$User:$PATH" >> /home/$User/.bashrc


# ABANDONED
# Create symbolic link to /usr/bin (makes running a script possible from any directory
#sudo -S ln -s /home/michael/.scripts/michael_pi.sh /usr/bin/michael
#sudo -S ln -s /home/$User/.scripts/maintainer.sh /usr/bin/maintain
