#!/bin/bash

if [ `ps  aux | awk '{print $1}' | grep vagrant | wc -l` -gt 0 ] ; then
  shutdown -c >& /dev/null &
else
  shutdown -P +10 >& /dev/null &
fi

