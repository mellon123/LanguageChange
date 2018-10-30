#!/bin/bash
if (($# != 2)); then
	echo "missing [arg1_file arg2_message_no_spaces!]. This will REMOVE the given arg1"
else
	echo "removing from git origin"
	git pull
	git rm $1
	git commit -m $2
	git push
fi
