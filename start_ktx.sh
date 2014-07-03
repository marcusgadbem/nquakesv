#!/bin/bash

cd /home/ubuntu/nquakesv

printf "* Starting mvdsv ktx mode (port 28501)..."
if ps ax | grep -v grep | grep "mvdsv -port 28501" > /dev/null
then
echo "[KTX 28501 IS ALREADY RUNNING]"
else
./run/ktx.sh > /dev/null &
echo "[OK]"
fi
