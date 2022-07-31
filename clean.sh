#!/bin/bash -xe
declare pid=`lsof -t -i:10001`
echo "pid=$pid"
if [ -n "$pid" ]; then
	kill -9 $pid
	echo "$pid has been killed."
fi
