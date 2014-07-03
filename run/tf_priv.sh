#!/bin/sh
while true ; do
  ./mvdsv -port 27501 -game fortress +exec server.cfg +exec server-private.cfg +exec server-port-27501.cfg
done
#end of script