#!/bin/bash

# Kill 28501
pid=`ps ax | grep -v grep | grep "/bin/sh ./run/port1.sh" | awk '{print $1}'`
if [ "$pid" != "" ]; then kill -9 $pid; fi;
pid=`ps ax | grep -v grep | grep "mvdsv -port 28501" | awk '{print $1}'`
if [ "$pid" != "" ]; then kill -9 $pid; fi;

# Kill QWFWD
pid=`ps ax | grep -v grep | grep "/bin/sh ./run/qwfwd.sh" | awk '{print $1}'`
if [ "$pid" != "" ]; then kill -9 $pid; fi;
pid=`ps ax | grep -v grep | grep "qwfwd.bin" | awk '{print $1}'`
if [ "$pid" != "" ]; then kill -9 $pid; fi;
