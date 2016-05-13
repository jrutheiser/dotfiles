#!/usr/bin/env bash

# Helper functions
msg() {
  printf '%b\n' "$1" >&2
}

success() {
  msg "\33[32m[✔]\33[0m ${1}${2}"
}

error() {
  msg "\33[31m[✘]\33[0m ${1}${2}"
  exit 1
}

cmd_exists() {
  command -v "$1" &> /dev/null
}

cmd_required() {
  if ! cmd_exists "$1"; then
    error "You must have '$1' installed to continue"
  fi
}

link_file() {
  if [ -e "$1" ]; then
    ln -sfh "$1" "$2"
  fi
}

# Setup functions
create_symlinks() {
  local source_path="$1"
  local target_path="$2"

  # Vim
  link_file "$source_path/.vimrc" "$target_path/.vimrc"
  link_file "$source_path/.vim"   "$target_path/.vim"

  # Git
  link_file "$source_path/.gitconfig" "$target_path/.gitconfig"
  link_file "$source_path/.gitignore" "$target_path/.gitignore"
  link_file "$source_path/.gitattributes" "$target_path/.gitattributes"

  # Shell
  link_file "$source_path/.bash_profile" "$target_path/.bash_profile"
  link_file "$source_path/.bash_aliases" "$target_path/.bash_aliases"
  link_file "$source_path/.bash_exports" "$target_path/.bash_exports"

  success "Setting up symlinks"
}

# Main
main() {
  local dotfiles_path="$( cd "$( dirname "${BASH_SOURCE[1]}" )" && pwd );"

  msg "Installing dotfiles:\n"

  cmd_required "vim"
  cmd_required "git"

  create_symlinks "$dotfiles_path" "$HOME"

  msg "\nFinished!"
}

main
