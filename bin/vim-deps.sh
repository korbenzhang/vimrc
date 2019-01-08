#!/bin/bash

DEPS="
wmctrl
"

for cmd in $DEPS; do
	echo check ${cmd}
	if command -v ${cmd} > /dev/null ; then
		echo ${cmd} is exists.
	else
		sudo apt-get install ${cmd} -y
	fi
done

