#!/bin/sh
cd `dirname $0`
mode=""
cmd=""

while [ $# -gt 0 ]; do
    proc=0

    if [ "$1" = "-s" ]; then
        mode="$1"
        shift
        proc=1
    fi    

    if [ "$1" = "-si" ]; then
        mode="$1"
        shift
        proc=1
    fi

    if [ "$1" = "-i" ]; then
        mode="$1"
        shift
        proc=1
    fi

    if [ $proc -eq 0 ]; then
        cmd="$cmd $1"
        shift
    fi
done


if [ "$mode" = "-s" ] || [ "$mode" = "" ]; then
        echo "TWSTART: Running command: $cmd"
        /bin/bash -c "$cmd"
fi

if [ "$mode" = "-si" ]; then
        echo "TWSTART: Running command: $cmd"
        /bin/bash -c "$cmd" &

        echo "TWSTART: Going interactive..."
        /bin/bash 
fi

if [ "$mode" = "-i" ]; then
        echo "TWSTART: Going interactive..."
        /bin/bash
fi
