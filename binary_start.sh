#!/usr/bin/env bash

set -e

VAL=0

while true
do
  echo $(date) - $VAL
  sleep 1
  VAL=$(expr $VAL + 1)
done
