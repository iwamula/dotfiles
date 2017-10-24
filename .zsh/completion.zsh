# 補完
autoload -Uz compinit; compinit
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' ignore-parents parent pwd .. # ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*:sudo:*' \
  command-path /usr/local/sbin /usr/local/bin \
  /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin      # sudo の後ろでコマンド名を補完する
zstyle ':completion:*:processes' \
  command 'ps x -o pid,s,args'
zstyle ':completion:*:default' menu select=2        # 補完で選択可能にする
# setopt menu_complete                                # すぐに最初の候補を補完する
setopt list_rows_first                              # 補完の表示順序を水平方向にする
setopt list_types                                   # 種類が分かるようにする
