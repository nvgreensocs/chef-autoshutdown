#!/bin/bash


# ANY sshd activity is indication that the machine was busy.
LASTAUTH=`grep "sshd" /var/log/auth.log | tail -1 | awk '{print $1" "$2" "$3}'`
LAST=$(date -d "$LASTAUTH" '+%s')
TENOLD=$(date -d '10 minutes ago' '+%s')
RUNNING=$(ps aux | awk '{print $1}' | grep vagrant | wc -l)

#echo "LAST $LAST OLD $TENOLD RUNNING $RUNNING" >> /vagrant/shutdown.log

if (( TENOLD > LAST )) ; then 
  if (( RUNNING == 0 )) ; then 
      shutdown -P
#    echo "SHUDOWN!" >> /vagrant/shutdown.log
  fi
fi

