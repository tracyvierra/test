#!/bin/bash

# Author: Tracy Vierra
# Date Created: 2/16/2022
# Date Modified: 2/16/2022

# Description:
# This script will run apt-get update and dist-upgrade and reboot if a reboot is required.

# Usage: 
# ./update_system.sh 

update_system () {
        apt-get update -y
        apt-get dist-upgrade -y
        apt-get autoremove -y
        apt-get autoclean -y
        if [ -f /var/run/reboot-required ]; then
                shutdown --reboot
        fi
}
#
# echo "Updating System on $(date)" >> "$HOME"/update_system_2.log 2>&1
# echo " "  >> "$HOME"/update_system_2.log 2>&1
# update_system >> "$HOME"/update_system_2.log 2>&1
# echo "Update System Complete on $(date)" >> "$HOME"/update_system_2.log 2>&1
# echo "_____________________________________________" >> "$HOME"/update_system_2.log 2>&1
# echo " " >> "$HOME"/update_system_2.log 2>&1
#
{ 
        echo "Updating System on $(date)"
        echo " "
        update_system 
        echo " "
        echo "Update System Complete on $(date)"
        echo "_____________________________________________"
        echo " "
}  >> "$HOME"/update_system_2.log 2>&1








