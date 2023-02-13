#!/bin/bash

for i in {1..200};
do
   ping -c1 192.168.100.$i | grep "64 bytes" | awk '{print $4}' | sed 's/://';
done;
