#!/bin/bash
cd $(dirname $0)
if [ -f .lock ] 
then
        echo "Lock file in place, refusing to do anything"
        exit
fi
touch .lock
"`npm bin`/grunt" cron
rm .lock
