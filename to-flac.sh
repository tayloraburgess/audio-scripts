#!/bin/bash

for f in `find "${1}" -name "*.${2}" -type f`; do
    sox "${f%.*}.${2}" -C 8 "${f%.*}.flac" norm -0.1
done
