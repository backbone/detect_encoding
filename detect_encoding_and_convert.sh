#!/bin/bash

toenc=$1
fname="$2"

enc=`detect_encoding.py "$fname"`
echo "Encoding=$enc"
[ "$enc" != "None" ] && iconv -f $enc -t $toenc "$fname" -o "$fname.iconv" && mv "$2".iconv "$2" || rm -f "$2".iconv

exit 0

