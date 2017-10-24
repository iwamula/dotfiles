#!/bin/bash

# リポジトリ内の全てのdotfilesのシンボリックリンクを
# ホームディレクトリに作成する
DOTFILES_DIR=$(cd $(dirname $0)/..; pwd)

for file in `find $DOTFILES_DIR -depth 1 -name ".*" -type f` $DOTFILES_DIR/.zsh; do
  echo "ln -sf $file ~/"
  ln -sf $file ~/
done
