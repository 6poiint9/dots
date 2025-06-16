# get all pricesses of a specified user 
#
#command:
# -> ps -u $user 
# 
# Output-format:
# PID COMMAND 

#!/usr/bin/env bash

user=$1 


# input check 
if [ -z "$1" ]; then
  echo "Error: no option entered"
  echo "Usage: ./script.sh <usern-name>"
  exit 1
else 

name=$1

# 1. Spalte output 
ps -u $name | cut -d ' ' -f 1 

ps -u $name | cut -d ' ' -f 4

fi




# PID-spalte 




