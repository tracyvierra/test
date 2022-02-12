#!/bin/bash

# Author: Tracy Vierra
# Date Created: 2/11/2022
# Date Modified: 2/11/2022

# Description:

# Usage:

readarray -t urls < urls.txt

for url in ${urls[@]}; do 
	curl --head $url -o $url.txt 
done





