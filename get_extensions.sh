#!/bin/bash

# Author: Tracy Vierra
# Date Created: 2/7/2022
# Date Modified: 2/7/2022

# Description:
# This script will get the extensions of all the users that run it and
# save the data to a file named extensions.csv in their home directory.

# Usage:
# ./get_extensions.sh

read -t 15 -p "Please enter your first name : " firstname
read -t 15 -p "Please enter your last name : " lastname
read -N 4 -t 15 -p "Please enter your extension number (4 digits) : " extension
echo " "
read -s -N 4 -t 15 -p "Please enter your access code (4 digits) : " accesscode
echo " "

echo "$firstname,$lastname,$extension,$accesscode" >> $HOME/extensions.csv








