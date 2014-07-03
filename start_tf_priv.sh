#!/bin/bash

cd /home/ubuntu/nquakesv

printf "* Starting mvdsv team fortress mode (port 27501)..."
if ps ax | grep -v grep | grep "fteqw.sv64 -port 27501" > /dev/null
then
echo "[TF 27501 IS ALREADY RUNNING]"
else
./run/tf_priv.sh > /dev/null &
echo "[OK]"
fi
