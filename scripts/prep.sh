#!/usr/bin/env bash

find . -type d -maxdepth 1 | while read f; do
    # echo $f
    name=$(basename $f)
    # echo $name

    echo -e "name: $name\ndescription: Parachain $name\n" > $f/$name.yaml
    mkdir -p "$f/icons"
    rm -rf "$f/screenshots"
    rm -rf "$f/icons/icons"
    rm -rf "$f/icons/icons.yaml"
    rm -rf "$f/icons/screenshots"
    mkdir -p "$f/screenshots"
    mv $f/*.svg $f/icons/
done
