age=10

if (( "$age" > 18 )) || (( "$age" < 40 )) # also could do [ "$age" -gt 18 -o "$age" -lt 40 ]
then
    echo "The person is between 18 and 40"
else
    echo "age is out of the range 18 to 40"
fi
