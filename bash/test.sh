#!/bin/sh


# test=-1

# if [ $test -gt 0 ]
# then
#     echo "it's positive+ number"
# else
#     echo "it's negative- number"
# fi

# echo $test

Hello () {
   echo "hello $1"
}

a=0
while [ "$a" -lt 10 ]    # this is loop1
do
   echo $a
   Hello "yasin"
   a=`expr $a + 1`
done