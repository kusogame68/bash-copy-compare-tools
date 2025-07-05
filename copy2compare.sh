#!/bin/bash

check_parameter(){
    if [ "$#" -ne 2 ]; then
        echo "NOTE : $0 <Source Path> <Destination Path>"
        exit 1
    elif [ ! -e "$1" ] || [ ! -e "$2" ]; then
        echo "Path is not exists."
        exit 1
    else
        echo "The paths are exist."
        echo "Source Path : $1"
        echo "Destination path : $2"
    fi
}

copy_pattern(){
    echo === Copy Start ===
    cp -a "$1"/. "$2"
    echo === Copy Complete ===
}

compare_pattern(){
    echo "=== Compare Start ==="
    tmpfile=$(mktemp)
    diff -urq "$1"/. "$2" > "$tmpfile"
    if [ $? -eq 0 ]; then
        echo "PASS."
    else
        echo "FAIL."
        cat "$tmpfile"
    fi
    rm -f "$tmpfile"
    echo "=== Compare Complete ==="
}

check_parameter "$@"
copy_pattern "$@"
compare_pattern "$@"
date