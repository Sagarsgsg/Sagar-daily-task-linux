#!/bin/bash
echo "Enter your fav colour"
read colour
if [ $colour == 'red' ]
then
    echo "your are danger"
elif [ $colour == 'blue' ]
then
    echo "your are friendly"
else
    echo "enter the colour in blue and red"
fi
