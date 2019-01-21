#/bin/bash
read -p "Enter the Users Password : " PASSWD 
for UNAME in `cat users.txt`
do
  id $UNAME &> /dev/null
  if [ $? ]
