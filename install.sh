#!/bin/zsh

backup() {
  target=$1
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      mv "$target" "$target.backup"
      echo "-----> Moved your old $target config file to $target.backup"
    fi
  fi
}

symlink() {
  file=$1
  link=$2
  if [ ! -e "$link" ]; then
    echo "-----> Symlinking your new $link"
    ln -s $file $link
  fi
}

link_dotfiles() {
  local src=$1
  local dest=$2

  for item in "$src"/*; do
    [ -e "$item" ] || continue
    local name=$(basename "$item")

    if [[ -d "$item" ]]; then
      mkdir -p "$dest/$name"
      link_dotfiles "$item" "$dest/$name"
    else
      backup "$dest/$name"
      symlink "$item" "$dest/$name"
    fi
  done
}

add_dotfile() {
  local target=$(realpath "$1")
  local dest=""

  # Check if target is nested inside a dot-directory (e.g. ~/.config/nvim)
  if [[ "$target" == "$HOME/."*"/"* ]]; then
    local relative="${target#$HOME/.}"  # strips ~/. → config/nvim
    dest="$SCRIPT_DIR/$relative"
  else
    # Top-level dotfile (e.g. ~/.zshrc → zshrc)
    local name="$(basename "$target")"
    dest="$SCRIPT_DIR/${name#.}"
  fi

  if [[ -e "$dest" ]]; then
    echo "-----> $(basename "$target") already exists in dotfiles, skipping"
    return
  fi

  echo "-----> Adding $(basename "$target") to dotfiles"
  mkdir -p "$(dirname "$dest")"
  cp -r "$target" "$dest"

  if [[ -d "$dest" ]]; then
    mkdir -p "$target"
    link_dotfiles "$dest" "$target"
  else
    backup "$target"
    symlink "$dest" "$target"
  fi

  echo "-----> Done! Don't forget to git add $dest"
}

SCRIPT_DIR=$(dirname "$(realpath "$0")")
IGNORE_FILES=$(paste -sd'|' "$SCRIPT_DIR"/dotfile_ignore)

# Usage: ./install.sh add ~/.someconfig
if [[ "$1" == "add" && -n "$2" ]]; then
  add_dotfile "$2"
  exit 0
fi

for name in "$SCRIPT_DIR"/*; do
  file_name=$(basename "$name")

  [[ "$file_name" =~ ^("$IGNORE_FILES")$ ]] && continue

  if [[ -d "$name" ]]; then
    mkdir -p "$HOME/.$file_name"
    link_dotfiles "$name" "$HOME/.$file_name"
  else
    target="$HOME/.$file_name"
    backup $target
    symlink $name $target
  fi
done

exec zsh

