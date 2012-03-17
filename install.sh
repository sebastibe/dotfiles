#!/usr/bin/env bash
# inspired by Sontek https://github.com/sontek/dotfiles
function link_file {
    source="${PWD}/$1"
    target="${HOME}/${1/_/.}"

    if [ -e "${target}" ]; then
        mv $target $target.bak
    fi

    ln -sf ${source} ${target}
}

for i in _*
do
    link_file $i
done
