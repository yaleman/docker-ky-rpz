#!/bin/bash

cd /opt/ky-rpz
echo [+] updating git repository
git pull
echo [+] updating RPZ
./ky-rpz.sh
echo [+] reloading bind config
rndc reload
