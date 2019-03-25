#!/bin/bash

export curDir="`dirname $0`"
export fullDir="`pwd`/$curDir"
export parentDir=`dirname $fullDir`


docker run --restart always -itd \
  -v "$fullDir/out":/acme.sh  \
  --net=host \
  --name=acme.sh \
  neilpang/acme.sh daemon
