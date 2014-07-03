#!/bin/sh
while true ; do
  #./mvdsv -port 27500 -game fortress +exec server.cfg +exec server-public.cfg +exec server-port-27500.cfg
  ./fteqw.sv64 -port 27500 -game fortress +exec server.cfg +exec server-public.cfg +exec server-port-27500.cfg
done
#end of script
