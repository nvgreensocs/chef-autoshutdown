#!/bin/bash


LAST=`date -d "`sudo grep "Accepted publickey for vagrant" /var/log/auth.log | tail -1 | awk '{print $1" "$2" "$3}'`" '+%s'`
OLD=`date -d '10 minutes ago' '+%s'`

if [ OLD < LAST ] ; then 
	shutdown -c >& /dev/null &
else
    if [ `ps  aux | awk '{print $1}' | grep vagrant | wc -l` -gt 0 ] ; then
	shutdown -c >& /dev/null &
    else
	shutdown -P +10 >& /dev/null &
    fi
fi

