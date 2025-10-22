#!/bin/bash
# Monaco Dotfiles Installation Script
# This script creates symlinks from Monaco to your home directory

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

MONACO_DIR="$HOME/Monaco"

echo -e "${BLUE}Monaco Dotfiles Installer${NC}"
echo "================================"

# Backup function
backup_if_exists() {
    if [ -e "$1" ] && [ ! -L "$1" ]; then
        echo -e "${BLUE}Backing up existing $1${NC}"
        mv "$1" "$1.backup.$(date +%Y%m%d_%H%M%S)"
    fi
}

# Create symlink function
create_symlink() {
    local source=$1
    local target=$2

    backup_if_exists "$target"

    if [ -L "$target" ]; then
        rm "$target"
    fi

    ln -s "$source" "$target"
    echo -e "${GREEN}✓${NC} Linked $target -> $source"
}

# Create .config directory if it doesn't exist
mkdir -p "$HOME/.config"

# Link ZSH config
echo -e "\n${BLUE}Setting up ZSH...${NC}"
create_symlink "$MONACO_DIR/zsh/zshrc" "$HOME/.zshrc"

# Link Starship config
echo -e "\n${BLUE}Setting up Starship...${NC}"
create_symlink "$MONACO_DIR/config/starship/starship.toml" "$HOME/.config/starship.toml"

# Link Fastfetch config
echo -e "\n${BLUE}Setting up Fastfetch...${NC}"
mkdir -p "$HOME/.config/fastfetch"
create_symlink "$MONACO_DIR/config/fastfetch/config.jsonc" "$HOME/.config/fastfetch/config.jsonc"

# Link GitHub CLI config
echo -e "\n${BLUE}Setting up GitHub CLI...${NC}"
mkdir -p "$HOME/.config/gh"
create_symlink "$MONACO_DIR/config/gh/config.yml" "$HOME/.config/gh/config.yml"

# Install Homebrew packages if Brewfile exists
if [ -f "$MONACO_DIR/Brewfile" ]; then
    echo -e "\n${BLUE}Brewfile found. Install packages? (y/n)${NC}"
    read -r response
    if [[ "$response" =~ ^[Yy]$ ]]; then
        echo -e "${BLUE}Installing Homebrew packages...${NC}"
        brew bundle --file="$MONACO_DIR/Brewfile"
    fi
fi

echo -e "\n${GREEN}✓ Monaco dotfiles installed successfully!${NC}"
echo -e "${BLUE}Please restart your terminal or run: source ~/.zshrc${NC}"
