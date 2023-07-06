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

    echo -e "key\n$i" | yq ea -p c '.[] | to_entries | .[].value | [.]' > /tmp/icons.yaml
    # cat /tmp/icons.yaml

    echo -e "key\n$s" | yq ea -p c '.[] | to_entries | .[].value | [.]' > /tmp/screenshots.yaml
    # cat /tmp/screenshots.yaml
    # yq ea '."dir"="'$dir'",."icons"=load("/tmp/icons.yaml"),."screenshots"=load("/tmp/screenshots.yaml")' $f > new.yaml
    # yq ea '."icons"=load("/tmp/icons.yaml"),."screenshots"=load("/tmp/screenshots.yaml"),"dir"="'$dir'"' $f > new.yaml
    yq ea '."icons"=load("/tmp/icons.yaml"),."screenshots"=load("/tmp/screenshots.yaml")' $f > new.yaml
    yq ea '."dir"|="'$dir'"' new.yaml > new2.yaml
    mv new2.yaml $f
    rm -rf new*.yaml

    popd > /dev/null
done
