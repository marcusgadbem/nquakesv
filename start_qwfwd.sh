#!/bin/bash

cd /home/ubuntu/nquakesv


echo -n "* Starting qwfwd (port 30000)..."
if ps ax | grep -v grep | grep "qwfwd.bin" > /dev/null
then
echo "[ALREADY RUNNING]"
else
./run/qwfwd.sh > /dev/null &
echo "[OK]"
fi