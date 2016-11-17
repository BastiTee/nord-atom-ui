#!/bin/bash

atom=/usr/share/atom/atom
ps -ef | grep $atom | grep -v grep | awk '{print $2}' | while read pid; do kill -9 $pid; done 2>&1 > /dev/null
apm unlink
apm install
apm link

