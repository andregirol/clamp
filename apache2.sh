#!/bin/bash

# Crouton Service Management Script
#
# Manages: Apache2
#
# Since I want to make things easier, I planned this scripts to avoid messing with systemd's configuration.
# These scripts were made to simplify the process when dealing with restarting services inside Crouton
#

if ! [ $(id -u) = 0 ]; then
  echo "Must run as root"
  exit 1
fi

case "$1" in

    start)
      /etc/init.d/apache2 start
      echo -e  "Done!"
    ;;
    stop)
      /etc/init.d/apache2 stop
      echo "Done!"
    ;;
    
    restart)
      /etc/init.d/apache2 stop
      echo "Done!"
      
      /etc/init.d/apache2 start
      echo "Done!"
    ;;
    
    *)
      echo "Usage: apache2 {start|stop|restart}"
      exit 1
    ;;
esac
