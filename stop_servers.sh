#!/bin/bash

# Kill KTX 28501
pid=`ps ax | grep -v grep | grep "/bin/sh ./run/ktx.sh" | awk '{print $1}'`
if [ "$pid" != "" ]; then kill -9 $pid; fi;

# Kill Team Fortress 27500
pid=`ps ax | grep -v grep | grep "/bin/sh ./run/tf_pub.sh" | awk '{print $1}'`
if [ "$pid" != "" ]; then kill -9 $pid; fi;

# Kill Team Fortress 27501
pid=`ps ax | grep -v grep | grep "/bin/sh ./run/tf_priv.sh" | awk '{print $1}'`
if [ "$pid" != "" ]; then kill -9 $pid; fi;

# Kill QWFWD
pid=`ps ax | grep -v grep | grep "/bin/sh ./run/qwfwd.sh" | awk '{print $1}'`
if [ "$pid" != "" ]; then kill -9 $pid; fi;
pid=`ps ax | grep -v grep | grep "qwfwd.bin" | awk '{print $1}'`
if [ "$pid" != "" ]; then kill -9 $pid; fi;
