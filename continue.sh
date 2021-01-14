#!/bin/bash

for i in {1..10}; do
  if [ $(( ${i} % 3 )) -eq 0 ]; then
    continue
  fi
  
  echo ${i}
done
