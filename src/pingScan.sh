#!/bin/bash

function is_alive_ping() {

  ping -c 1 $1 > /dev/null 2>&1

  if [ $? -eq 0 ];
  then
	echo "Node with IP: $i is up."
  else
	echo "Node with IP: $i is down."
  fi 

}

for i in 192.168.100.{1..50}

do

is_alive_ping $i

done