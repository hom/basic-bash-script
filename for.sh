#!/bin/bash

# Echo list with space deviced
users='mengj guom tj'
for user in ${users}; do
  echo ${user}
done

# Echo list with , deviced
list='mengj,guom,tj'
IFS=,
for item in ${list}; do
  echo ${item}
done

# Echo range numbers
for num in {1..10}; do
  echo ${num}
done

# Echo array
array=('mengj' 'guom' 'tj')
for item in ${array[@]}; do
  echo ${item}
done

for item in ${array[*]}; do
  echo ${item}
done
