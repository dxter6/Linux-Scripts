#!/bin/bash
date -R
sudo smartctl -x /dev/sda | awk '/Total_Writes_GB/ {print "TBW: " $8*512/1024/1024/1024/1024 " TB"}'

