#!/usr/bin/env bash

source_files() {
  local file=""
  local file_path=""

  declare -a files

  files=(
    ".bash_aliases"
    ".bash_exports"
    ".bash.local" # local override
  )

  for file in "${files[@]}"; do
    file_path="$HOME/$file"

    if [ -r "$file_path" ]; then
      source "$file_path"
    fi
  done
}

source_files
unset source_files
