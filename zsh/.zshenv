export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="nvim"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

export DOTFILES="$HOME/dotfiles"

export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export ENCORE_INSTALL="/home/carloscrg19/.encore"
export PATH="$ENCORE_INSTALL/bin:$PATH"


export TBB_INSTALL_DIR=/usr/lib/cmake/TBB
#export TBB_INCLUDE=$TBB_INSTALL_DIR/include
#export TBB_LIBRARY_RELEASE=$TBB_INSTALL_DIR/build/linux_intel64_clang_cc13.1.1_libc2.37_kernel6.3.4_release
#export TBB_LIBRARY_DEBUG=$TBB_INSTALL_DIR/build/linux_intel64_clang_cc13.1.1_libc2.37_kernel6.3.4_debug

# practicas uam
export ODBCSYSINI=/etc
export ODBCINI=/etc/odbc.ini

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
