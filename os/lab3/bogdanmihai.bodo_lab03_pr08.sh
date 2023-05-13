#!/bin/bash

if [ -f "$1" ]; then

  file=`cat $1`
  sum=0

  for line in $file; do
    for num in $line; do
        sum=$((sum+num))
    done
  done
 echo $sum
else
   echo "parametru invalid">&2
   exit 1
fi