autoload -Uz colors && colors

# Useful functions from https://github.com/ChristianChiarulli/Machfiles/blob/master/zsh
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
# export KEYTIMEOUT=1

# turn on autocompletion system
autoload -U compinit; compinit
_comp_options+=(globdots)
fpath=($ZDOTDIR/external $fpath)

# vim keybindings
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M viins 'jk' vi-cmd-mode

autoload -Uz cursor_mode && cursor_mode

if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

if [ $(command -v "fzf") ];
then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi
