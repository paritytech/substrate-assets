#!/usr/bin/env bash

find assets -name *.sh |while read file; do
    $file
done
