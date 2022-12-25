#!/bin/bash

rm -rf "$HOME/.config/nvim"
ln -s "$HOME/dotfiles/nvim" "$HOME/.config"

rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config"

rm -rf "$HOME/.config/alacritty"
ln -s "$HOME/dotfiles/alacritty" "$HOME/.config"

rm -rf "$HOME/.config/zsh"
ln -s "$HOME/dotfiles/zsh" "$HOME/.config"
ln -s "$HOME/dotfiles/zsh/.zshenv" "$HOME"
