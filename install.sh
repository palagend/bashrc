#!/bin/bash
# Usage: install.sh <dir_name_of_install.sh>

FILES=("bashrc" "inputrc")

my_bash_dir=${1:-.bash}

[[ -e $HOME/.local/bin ]] || mkdir -p $HOME/.local/bin

/bin/cp -v $HOME/$my_bash_dir/junction $HOME/.local/bin/junction
/bin/cp -v $HOME/$my_bash_dir/ln.sh $HOME/.local/bin/ln.sh

for file in "${FILES[@]}"; do
    real_path="$HOME/$my_bash_dir/$file"
    new_path="$HOME/.$file"
    if [[ -h "$new_path" ]]; then
        rm "$new_path"
    else
        [[ -f "$new_path" ]] && mv "$new_path"{,.bak}
    fi
    junction "$new_path" "$real_path"
done
