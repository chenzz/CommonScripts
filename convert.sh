#!/bin/bash
#Program:
#   convert the text written in windows to the text usable in linux.
#Author:
#   Chen Zhongzheng
#History:
#   2014年09月03日20:17:36  v1.0
#TODO:
#   add a parameter to specify the origin encoding, eg. gb2312\cp936\gbk...

function recursion()
{
	cd $1
	for i in $(ls)
	do
		if [ -d "$i" ]; then
			recursion $i $2
		elif [ "${i##*.}" = "${2}" ]; then
			iconv -f cp936 -t utf-8 $i > temp_111
			mv temp_111 $i
			dos2unix $i
		fi
	done
	cd ..
}

if [ ! $# -eq 2 ]; then
    echo "usage: bash convert.sh directory_name extension_name"
elif [ ! -d $1 ]; then
	echo "usage: bash convert.sh directory_name extension_name"
else
	recursion $1 $2
fi
