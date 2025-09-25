#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Invaild input"
    exit 1
fi

rows=$1
cols=$2

if ! [[ "$rows" =~ ^[0-9]+$ && "$cols" =~ ^[0-9]+$ ]]; then
    echo "Invalid Input"
    exit 1
fi

if [ "$rows" -le 0 ] || [ "$cols" -le 0 ]; then
    echo "Inut must be greater than 0"
    exit 1
fi

for ((i=1; i<=rows; i++)); do
    for ((j=1; j<=cols; j++)); do
        printf "%d*%d=%-4d" "$i" "$j" $((i * j))
    done
    echo
done

