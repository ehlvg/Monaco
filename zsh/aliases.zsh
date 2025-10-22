# Monaco ZSH Aliases

# Navigation
alias projects='cd ~/Repos'
alias monaco='cd ~/Monaco'

# Claude
alias ah='claude -p'

# Modern replacements
alias ls='eza --icons'
alias la='eza --icons -a'
alias ll='eza --icons -l'
alias lla='eza --icons -la'
alias lt='eza --icons --tree'
alias cat='bat'

# Git shortcuts (if you want)
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph'

# System
alias reload='source ~/.zshrc'
alias editsh='code ~/Monaco/zsh/zshrc'

# Useful
alias c='clear'
alias h='history'
alias ..='cd ..'
alias ...='cd ../..'
