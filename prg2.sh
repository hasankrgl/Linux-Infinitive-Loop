#!/bin/env bash

echo "Mem Free; Mem Swap" 

while :
do
    mem_free=$(cat /proc/meminfo | grep "^MemFree" | tr -d ' ' | cut -f 2 -d ":")
    mem_swap=$(cat /proc/meminfo | grep "^SwapTotal" | tr -d ' ' | cut -f 2 -d ":")

    echo "$mem_free; $mem_swap; " 

    sleep 1;
done


