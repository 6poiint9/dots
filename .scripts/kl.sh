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
ps -u $name > ok.txt | awk '{print $0}' ok.txt 

# 2. Spalte otput 
#ps -u $name > ok2.txt| awk '{print $4}' ok.txt

fi




# PID-spalte 




