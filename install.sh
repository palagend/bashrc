#!/bin/bash
# Usage: install.sh <dir_name_of_install.sh>

FILES=("bashrc" "inputrc")

my_bash_dir=${1:-.bash}

for file in "${FILES[@]}"; do
    real_path="$HOME/$my_bash_dir/$file"
    new_path="$HOME/.$file"
    if [[ -h "$new_path" ]]; then
        rm "$new_path"
    else
        [[ -f "$new_path" ]] && mv "$new_path"{,.bak}
    fi
    ln -vs "$real_path" "$new_path"
done
