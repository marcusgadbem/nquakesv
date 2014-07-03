#!/bin/bash

cd /home/ubuntu/nquakesv

printf "* Starting mvdsv (port 28501)..."
if ps ax | grep -v grep | grep "mvdsv -port 28501" > /dev/null
then
echo "[ALREADY RUNNING]"
else
./run/port1.sh > /dev/null &
echo "[OK]"
fi

echo -n "* Starting qwfwd (port 30000)..."
if ps ax | grep -v grep | grep "qwfwd.bin" > /dev/null
then
echo "[ALREADY RUNNING]"
else
./run/qwfwd.sh > /dev/null &
echo "[OK]"
fi
