#!/bin/bash

if [ -f "$1" ]; then
   awk 'BEGIN { alf = "abcdefghijklmnopqrstuvwxyz" } { output = ""; for(i=1;i<=NF;i++){ if ($i >= 0) { x = int($i / 26); output = output substr(alf, $i - x * 26 + 1, 1) } } print output }' "$1" | sed ':a;N;$!ba;s/\n/ /g'
else
   echo "parametru invalid" >&2
   exit 1
fi