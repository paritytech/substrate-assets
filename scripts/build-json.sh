#!/usr/bin/env bash

list="$(find assets -name "*.yaml" | tr "\n" " ")"
mkdir -p out
yq ea '[.]' $list | yq ea '[.]' | yq ea '{"assets": .[0]}' -o=json > out/assets.json
