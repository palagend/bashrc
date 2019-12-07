#!/bin/bash
# mock ln implemented by junction

GETOPT=`which getopt`
frml_ops=`$GETOPT s $*`
for item in $frml_ops ; do
	case $item in
		-s)
			~/.local/bin/junction $3 $2
			break
			;;
		*)
			echo YOU MUST PROVIDE -s OPTION FOR SYMBOLIC LINK
			exit 1
			;;

	esac
done
