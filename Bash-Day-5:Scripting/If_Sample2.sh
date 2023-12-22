#!/bin/bash

echo "Please Enter The Number To Check Even or Odd: "
read NUMBER

if [ $((NUMBER%2))==0 ]; then
echo "$NUMBER is an even number"

else
echo "$NUMBER is an odd number"

fi
