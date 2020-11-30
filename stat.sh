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

function main() {
  memory
  cpu
  tcp
  kernel
}

main
