#!/bin/bash

echo "The time is `date` with \` wrapped"
echo "The time is $(date) with \$() wrapped"

now=$(date)
echo "The variable value is $now with only \$"
echo "The variable value is ${now} with \${}"
