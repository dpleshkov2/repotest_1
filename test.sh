#!/bin/bash
# my useful comment and recommendations


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


username=`id -nu`
if [ "$username" != "root" ]
then
	echo "Must be root to run \"`basename $0`\"."
	exit 1
fi
