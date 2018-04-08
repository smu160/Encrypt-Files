#!/bin/bash
if [[ $# -ne 2  ]]; then
    printf "USAGE: <file-to-decrypt> <outputted-file-name>\n"
    exit -1
fi

gpg --output $2 --decrypt $1 
