#!/bin/bash

file="$1"
prefix="$2"
suffix=1
line_count=1000

split -l "$line_count" "$file" "$prefix"

for file in $(ls -v "${prefix}"*); do
    new_name="${prefix}${suffix}"
    mv "$file" "$new_name"
    suffix=$((suffix+1))
done
