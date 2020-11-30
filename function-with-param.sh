#!/bin/bash
user=mengj
function hello() {
  echo "Hello ${1} from the function of bash"
}

hello ${user}
