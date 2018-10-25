#!/bin/sh

env sslocal -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD \
  -b 0.0.0.0 -l 1080 -m ${METHOD:-'aes-256-cfb'} -d start

env /usr/sbin/privoxy --no-daemon /etc/privoxy/config