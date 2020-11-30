#!/bin/bash

admin=mengj

read -p "What is your name? " name

if [[ -z ${name} ]]; then
  echo "Please enter your name!"
elif [[ ${name} == ${admin} ]]; then
  echo "Hello, welcome ${name}, you are the admin user"
else
  echo "Hello, welcome ${name}"
fi
