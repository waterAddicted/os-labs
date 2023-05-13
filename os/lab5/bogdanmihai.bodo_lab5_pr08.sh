#!/bin/bash
if [ -f "$1" ]; then
  awk '{sum = 0;count = 0; for(i=1;i<=NF;i++){sum=sum+$i;count=count+1;}avg=int(sum/count);print avg}' $1
else
   echo "parametru invalid">&2
   exit 1
fi