#!/bin/bash

echo "for 1 2 3 4"
for number in 1 2 3 4
do
    echo $number
done

echo -e "\nfor \$(seq 1 4)"
for number in $(seq 1 4)
do
    echo $number
done

echo -e "\nfor \$@"
for number in $@
do
    echo $number
done