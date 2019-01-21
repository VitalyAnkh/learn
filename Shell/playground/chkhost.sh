#!/usr/bin/zsh
ping -c 5 -i 0.2 -W 3 $1 &> /dev/null
if [ $? -eq 0 ]
then
  echo "Host $1 is On-line."
else
  echo "Host $1 is Off-line."
fi 
