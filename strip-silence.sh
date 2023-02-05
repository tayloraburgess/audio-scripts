#!/bin/bash

for f in `find "${1}" -name "*.${2}" -type f`; do
    sox "${f%.*}.${2}" "${f%.*}-s.${2}" silence 1 0.1 0.01% reverse silence 1 0.1 0.01% reverse
done
