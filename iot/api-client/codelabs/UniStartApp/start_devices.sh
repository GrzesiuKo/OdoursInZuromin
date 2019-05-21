#!/bin/sh

name=$1
location=$2
odour=$3
temp=$4
humid=$5
max=3

source env/bin/activate

for i in `seq 1 $max`
do
    echo "Starting $name$i"
    ./start_device.sh $name$i $location $odour $temp $humid \$

done

