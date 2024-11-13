#!/bin/bash

names=("Fred" "Johnson" "Ian Davidson" "Linda Smith" "Jason Anderson")

generateList() {
	local arr=("$@")
	local len=${#arr[@]}

	for ((i=0; i<$len; i++)); do
		for ((j=i+1; j<$len; j++)); do
			echo "${arr[i]}${arr[j]}"
		done
	done
}

generateList "${names[@]}"
