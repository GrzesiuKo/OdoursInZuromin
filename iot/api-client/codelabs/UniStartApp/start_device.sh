#!/bin/sh

name=$1
location=$2
odour=$3
temp=$4
humid=$5

source env/nin/activate

echo "Starting $name"

python ./sensor.py $name $location $odour $temp $humid


