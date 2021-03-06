#
# ~/.bashrc
# Author: Diep Pham Van <imeo@favadi.com>
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Helper functions
[[ -r ~/.bash/bash_func.sh ]] && source ~/.bash/bash_func.sh

# Bash options
source_if_exist ~/.bash/bash_opt.sh

# Key bindings
#source_if_exist ~/.bash/bash_key.sh

# Eye candy
source_if_exist ~/.bash/bash_apr.sh

# Aliases
source_if_exist ~/.bash/bash_alias.sh

# Misc
#source_if_exist ~/.bash/bash_misc.sh

# Custom file
#source_if_exist ~/.bash/bash_custom.sh

# Export environment
#source_if_exist ~/.bash/bash_export.sh

source_if_exist /usr/share/autojump/autojump.bash
source_if_exist ~/planets/earth/bin/activate

# Setting PATH environment variable
source_if_exist ~/.bash/bash_path.sh

source_if_exist ~/.bash/.nativerc
