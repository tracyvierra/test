#!/bin/bash

# Author: Tracy Vierra
# Date Created: 2/11/2022
# Date Modified: 2/11/2022

# Description:

# Usage:

while read line; do
    mkdir "$line"
done < $1
# done < "folders_to_create.txt"








