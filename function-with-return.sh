#!/bin/bash

function execute() {
	echo 'Run command in bash function'
	return 10
}

execute

echo "Get execute function returned value is: ${?}"
