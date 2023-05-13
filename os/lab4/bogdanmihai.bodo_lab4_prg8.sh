#!/bin/bash

if [ -f "$1" ] && echo "$2" | grep -qE '^[0-9]+$'; then

  grep -E "\b[0-9]{$2,}\b" $1 | wc -l
else
   echo "parametru invalid">&2
   exit 1
fi