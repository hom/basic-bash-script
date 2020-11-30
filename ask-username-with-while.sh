#!/bin/bash

read -p "Please enter your name: " name

while [[ -z ${name} ]]; do
  echo "Your name can not be blank. Please enter a valid name!"
  read -p "Enter your name again: " name
done

echo "Hi there ${name}"
