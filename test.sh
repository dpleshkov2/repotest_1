#!/bin/bash
# my useful comment


for arg
do
	if [ -f "$arg" ] ; then
		case "$arg" in
		*.Z) $unZ "$arg"
			arg="$(echo $arg | sed 's/\.Z$//')"
			Zlist="$Zlist \"$arg\""
			;;
		esac
	fi

