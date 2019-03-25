#!/usr/bin/env bash
file="$1"
[[ -z "$file" ]] && echo "file is empty!" && exit -1
fileName="`basename $file`"
fileNamePrefix=`echo "$fileName" | awk -F "." '{print $1}'`
docker run -v $PWD:/opt/docs auchida/markdown-pdf markdown-pdf -o $fileNamePrefix.pdf $file