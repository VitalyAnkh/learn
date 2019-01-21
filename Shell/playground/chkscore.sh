#!/usr/bin/bash
read -p "Enter your score (0-100) :" GRADE
if [ $GRADE -gt 85 ] && [ $GRADE -le 100 ] ; then
  echo "$GRADE is excellent"
elif [ $GRADE  -ge 70 ] && [ $GRADE -lt 85 ]; then
  echo "$GRADE is pass"
else 
  echo "$GRADE is fail"
fi 
