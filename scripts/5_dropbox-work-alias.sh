#!/bin/bash

# ~/Dropbox/Work/ のディレクトリ全てのシンボリックリンクを
# ~/Work/ に作成する
# Note: 先に同期を済ませておくこと

for file in `find ~/Dropbox/Work -depth 1 -type d`; do
  echo "ln -sf $file ~/Work/"
  ln -sf $file ~/Work/
done
