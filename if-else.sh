#!/bin/bash

admin=mengj

read -p "What is your name? " name

if [[ -n ${name} ]] && [[ ${name} == ${admin} ]]; then
    echo "Hello, welcome ${name}, you are the admin user"
else
    echo "Please enter your name!"
fi
