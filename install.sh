#!/bin/zsh

# Define a function which rename a `target` file to `target.backup` if the file
# exists and if it's a 'real' file, ie not a symlink
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

# For all files `$name` in the present folder except `install.sh`, `README.md`
# backup the target file located at `~/.$name` and symlink `$name` to `~/.$name`
SCRIPT_DIR=$(dirname "$(realpath "$0")")
IGNORE_FILES=$(paste -sd'|' "$SCRIPT_DIR"/dotfile_ignore)
for name in "$SCRIPT_DIR"/*; do
  if [[ ! -d "$name" ]]; then
    file_name=$(basename ${name})
    if [[ ! "$file_name" =~ ^("$IGNORE_FILES")$ ]]; then
      target="$HOME/.$file_name"
      backup $target
      symlink $PWD/$file_name $target
    fi
  fi
done

exec zsh