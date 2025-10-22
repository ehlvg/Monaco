# Monaco ZSH Exports

# Path configurations
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"

# Editor
export EDITOR="code"
export VISUAL="code"

# Language
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Better history
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
