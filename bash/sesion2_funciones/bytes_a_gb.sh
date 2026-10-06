#!/bin/bash


function bytes_a_gb () {
	echo "scale=2; $1 / 1073741824" | bc
}

gb=$(bytes_a_gb $1)

echo "$1 bytes son $gb gb"
