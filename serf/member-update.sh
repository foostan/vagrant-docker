#!/bin/bash

echo
while read line; do
  HOSTNAME=`echo ${line} | awk '{print $1}'`
  IPADDR=`echo ${line} | awk '{print $2}'`

  echo menber-update hostname: $HOSTNAME, ipaddr: $IPADDR
done
