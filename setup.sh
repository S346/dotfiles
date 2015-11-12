#!/bin/bash

for file in .??*
do
  [[ "$file" == ".git" ]] && continue
  [[ "$file" == ".DS_Store" ]] && continue

  if [ -a $HOME/$file ]; then
    ln -s $HOME/dotfiles/$file $HOME/$file.dot
    echo "ファイルが存在します.dotファイル: $file"
  else
    ln -s $HOME/dotfiles/$file $HOME/$file
    echo "シンボリックリンクを貼りました: $file"
  fi
done
