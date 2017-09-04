#!/bin/bash

# Crouton Service Management Script
# Manages MySQL

if ! [ $(id -u) = 0 ]; then
  echo "Must run as root"
  exit 1
fi

case "$1" in

    start)
      /etc/init.d/mysql start
      echo "Done!"
    ;;
    stop)
      /etc/init.d/mysql stop
      echo "Done!"
    ;;
    
    restart)
      /etc/init.d/mysql stop
      echo "Done!"
      
      /etc/init.d/mysql start
      echo "Done!"
    ;;
    
    *)
      echo "Usage: mysql.sh {start|stop|restart}"
      exit 1
    ;;
esac
