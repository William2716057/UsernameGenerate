#!/bin/bash

names=("Fred Johnson" "Ian Davidson" "Linda Smith" "Jason Anderson")

generateList() {
	local arr=("$@")
	local len=${#arr[@]}

	for ((i=0; i<$len; i++)); do
	    local space_remove="${arr[i]// /}"
	    echo "${space_remove}@gmail.com"
	done
}

generateList "${names[@]}"
