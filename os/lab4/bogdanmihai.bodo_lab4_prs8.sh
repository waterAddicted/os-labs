#!/bin/bash

if [ -f "$1" ]; then

 sed -i 's/[[:space:]]\+/,/g' "$1"
 sed -i ':a;N;$!ba;s/\n/,/g' "$1"
else
   echo "parametru invalid">&2
   exit 1
fi