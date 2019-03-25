#!/usr/bin/env bash

export curDir="`dirname $0`"
#export fullDir="`pwd`/$curDir"
echo "curdir= $curDir"
#export parentDir=`dirname $fullDir`
#echo "parentDir===$parentDir"


export GD_Key="9uBdCS9TnNq_QhEmCmtqKaYXvD8nCTZGrS"
export GD_Secret="QhEpvW2iJ5xadVQoDiLyp2"
docker  exec -e GD_Key=$GD_Key -e GD_Secret=$GD_Secret  acme.sh --issue --dns dns_gd -d wiki.tronup.com $@

[[ ! -d "$curDir/nginx/ssl/" ]] && mkdir -p "$curDir/nginx/ssl/"
cp $curDir/out/wiki.tronup.com/wiki.tronup.com.key $curDir/nginx/ssl/
cp $curDir/out/wiki.tronup.com/fullchain.cer $curDir/nginx/ssl/
docker exec -it wiki-nginx nginx -s reload

