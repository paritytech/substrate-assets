#!/usr/bin/env bash

dir=$(dirname $0)
echo "DIR: $dir"
pushd $dir
wget https://avatars.githubusercontent.com/u/33775474 -O ./icon.png
popd
