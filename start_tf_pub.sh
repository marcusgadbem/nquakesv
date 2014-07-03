#!/bin/bash

cd /home/ubuntu/nquakesv

printf "* Starting mvdsv team fortress mode (port 27500)..."
if ps ax | grep -v grep | grep "fteqw.sv64 -port 27500" > /dev/null
then
echo "[TF 27500 IS ALREADY RUNNING]"
else
./run/tf_pub.sh > /dev/null &
echo "[OK]"
fi
