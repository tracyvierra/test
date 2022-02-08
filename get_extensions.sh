#!/bin/bash

# Author: Tracy Vierra
# Date Created: 2/7/2022
# Date Modified: 2/7/2022

# Description:

# Usage:

read -t 15 -p "Please enter your first name : " firstname
read -t 15 -p "Please enter your last name : " lastname
read -n 4 -t 15 -p "Please enter your extension number (4 digits) : " extension
echo " "
read -s -n 4 -t 15 -p "Please enter your access code (4 digits) : " accesscode
echo " "

echo "$firstname,$lastname,$extension,$accesscode" >> $HOME/extensions.csv








