#! /bin/bash

echo "enter hex number of choice"
read hex_number

echo -n "The decimal value of $hex_number is : "
echo "obase=10; ibase=16; $hex_number" bc # use the bc calculator to convert from hex to decimal  