# Monaco - Personal Dotfiles

Modern and minimal dotfiles configuration for macOS.

## Features

- **ZSH** - Shell configuration with custom aliases
- **Starship** - Fast and customizable prompt
- **Fastfetch** - System information tool with custom theme
- **Modern CLI Tools** - eza, bat, fzf, and more
- **Brewfile** - Automated package management

## Quick Start

```bash
cd ~/Monaco
./install.sh
```

The install script will:
- Create symlinks to all configuration files
- Backup existing configs (if any)
- Optionally install Homebrew packages from Brewfile

## Structure

```
Monaco/
├── zsh/
│   ├── zshrc              # Main ZSH configuration
│   ├── aliases.zsh        # Command aliases
│   └── exports.zsh        # Environment variables
├── config/
│   ├── starship/
│   │   └── starship.toml  # Starship prompt config
│   ├── fastfetch/
│   │   └── config.jsonc   # Fastfetch system info config
│   └── gh/
│       └── config.yml     # GitHub CLI config
├── Brewfile               # Homebrew packages
├── install.sh             # Installation script
└── README.md              # This file
```

## Custom Aliases

**Navigation:**
- `projects` - Jump to ~/Repos
- `monaco` - Jump to ~/Monaco
- `..` / `...` - Navigate up directories

**Tools:**
- `ah` - Claude in plan mode
- `ls` / `la` / `ll` / `lla` - eza variants
- `lt` - eza tree view
- `cat` - bat (syntax highlighting)
- `c` - clear screen

**Git:**
- `gs` - git status
- `ga` - git add
- `gc` - git commit
- `gp` - git push
- `gl` - pretty git log

**GitHub CLI:**
- `gh co` - checkout PR
- `gh pv` - view PR
- `gh pc` - create PR
- `gh rv` - view repo

**Editing:**
- `reload` - reload zsh config
- `editsh` - edit Monaco config in VSCode

## Installed Tools

- **bat** - cat with syntax highlighting
- **eza** - modern ls replacement
- **fastfetch** - system info
- **fzf** - fuzzy finder
- **gh** - GitHub CLI
- **starship** - prompt customization
- **mlx** - Apple MLX framework
- **pipx** - Python package installer

## Manual Setup

If you prefer manual installation:

```bash
# ZSH
ln -s ~/Monaco/zsh/zshrc ~/.zshrc

# Starship
ln -s ~/Monaco/config/starship/starship.toml ~/.config/starship.toml

# Fastfetch
mkdir -p ~/.config/fastfetch
ln -s ~/Monaco/config/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc

# Install packages
brew bundle --file=~/Monaco/Brewfile
```

## Updating

To add new configurations:

1. Add files to Monaco directory structure
2. Update `install.sh` if needed
3. Commit and push changes

## Requirements

- macOS
- Homebrew
- ZSH (default on macOS)

## Notes

- All original configs are backed up with timestamp
- Symlinks allow easy updates - edit in Monaco, changes apply immediately
- Safe to run install.sh multiple times
