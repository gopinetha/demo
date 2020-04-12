#!/usr/bin/bash

echo "employe is present or not"

isPresent=$((RANDOM % 2))
set -x
if [ $isPresent = 1 ];
then
	echo "the Employe is present"
else
	echo "the Employe is absent"
fi
