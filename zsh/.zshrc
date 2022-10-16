autoload -Uz colors && colors

# Useful functions from https://github.com/ChristianChiarulli/Machfiles/blob/master/zsh/.config/zsh/zsh-aliases
source "$ZDOTDIR/zsh-functions"

zsh_add_file "zsh-aliases"
zsh_add_file "zsh-prompt"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

setopt HIST_SAVE_NO_DUPS                # Do not write duplicate event to the history file

unsetopt BEEP                           # No beep, it sucks

setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

# Enable vi mode
bindkey -v
export KEYTIMEOUT=1

# turn on autocompletion system
autoload -U compinit; compinit
