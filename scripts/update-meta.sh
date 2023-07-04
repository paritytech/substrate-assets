#!/usr/bin/env bash

find assets -name "*.yaml" | while read file; do
    dir=$(dirname $file)
    f=$(basename $file)
    pushd $dir > /dev/null

    pwd
    #mkdir -p icons
    #mkdir -p screenshots
    i="$(find icons -type f -not -name '.*')"
    s="$(find screenshots -type f -not -name '.*')"

    echo "icon\n$i" | yq ea -p c '.[] | to_entries | .[].value | [.]' > /tmp/icons.yaml
    echo "screenshot\n$s" | yq ea -p c '.[] | to_entries | .[].value | [.]' > /tmp/screenshots.yaml

    yq ea '."icons"=load("/tmp/icons.yaml"),."screenshots"=load("/tmp/screenshots.yaml")' $f > new.yaml
    mv new.yaml $f
    rm -rf new.yaml

    popd > /dev/null
done

list="$(find assets -name "*.yaml" | tr "\n" " ")"
