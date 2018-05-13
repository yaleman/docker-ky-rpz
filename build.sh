#!/bin/bash

#SQUIDIP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' squid)

#echo Proxy at $SQUIDIP

#export http_proxy="http://$SQUIDIP:3128"
#export https_proxy="http://$SQUIDIP:3128"

docker build --tag yaleman/ky-rpz --no-cache . 
#--build-arg http_proxy=http://$SQUIDIP:3128  . 
