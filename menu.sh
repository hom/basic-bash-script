#!/bin/bash

#
# BASH script that checks:
#   - Memory usage
#   - CPU load
#   - Number of TCP connections
#   - Kernel version
#

hostname=$(hostname)

function memory() {
  echo ""
  echo "Memory usage on ${hostname} is:"
  free -h
  echo ""
}

function cpu() {
  echo ""
    echo "CPU load on ${hostname} is:"
  echo ""
    uptime
  echo ""
}

function tcp() {
  echo ""
    echo "TCP connections on ${hostname} is:"
  echo ""
    cat /proc/net/tcp | wc -l
  echo ""
}

function kernel() {
  echo ""
    echo "Kernel version on ${hostname} is:"
  echo ""
    uname -r
  echo ""
}

function stat() {
  memory
  cpu
  tcp
  kernel
}

green="\e[31m"
green="\e[32m"
blue="\e[34m"
clear="\e[0m"

function to_green() {
  echo -ne "${green}$1${clear}"
}

function to_blue() {
  echo -ne "${blue}$1${clear}"
}

function menu() {
echo -ne "
My first menu
$(to_green '1)') Memory usage
$(to_green '2)') CPU load
$(to_green '3)') TCP connections
$(to_green '4)') Kernel version
$(to_green '5)') Check All
$(to_green '0)') Exit
$(to_blue 'Choose an opton)')
"
  read result
  case ${result} in 
    1) memory; menu;;
    2) cpu; menu;;
    3) tcp; menu;;
    4) kernel; menu;;
    5) stat; menu;;
    0) exit 0;;
    *) echo -e "${red}Wrong option.${clear}";;
  esac
}

function main() {
  menu
}

main
