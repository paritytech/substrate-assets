#!/usr/bin/env bash

# find assets -name "*.yaml" | while read file; do
#     echo $file
# done

list="$(find assets -name "*.yaml" | tr "\n" " ")"

# echo "$list"

yq ea '[.]' $list | yq ea '[.]' | yq ea '{"assets": .[0]}' > /tmp/test.yaml

tera -t templates/list.md.tera /tmp/test.yaml > /tmp/list.md
