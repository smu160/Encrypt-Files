#!/bin/bash
if [[ $# -ne 1  ]]; then
    printf "USAGE: <dir-to-encrypt>\n"
    exit -1
fi

zip "$1.zip" $1 
gpg --cipher-algo AES256 --symmetric "$1.zip"
rm -rf $1
rm "$1.zip"

