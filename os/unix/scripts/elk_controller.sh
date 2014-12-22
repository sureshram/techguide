#!/bin/bash

function control() {

      if [ $1 == "status" ]
      then
        service httpd status
      else
        apachectl $1
      fi
      service logstash $1
      service elasticsearch $1
}

echo "Type quit to exit"
OPTIONS="start stop status quit"
select opt in $OPTIONS; do
   if [ "$opt" = "start" ]; then
      control start
   elif [ "$opt" = "status" ]; then
      control status
   elif [ "$opt" = "stop" ]; then
      control stop
   elif [ "$opt" = "restart" ]; then
      control stop
      control start
   else
    break
   fi
done