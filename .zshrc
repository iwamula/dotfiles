# 履歴
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history              # 履歴を共有
setopt hist_ignore_all_dups       # 同じコマンドを履歴に残さない
setopt hist_reduce_blanks         # ヒストリに保存するときに余分なスペースを削除する

# その他
autoload -Uz colors; colors   # 色を有効
setopt NO_CLOBBER             # 既存ファイルへのリダイレクションを禁止
setopt no_beep                # ビープ音を無効
setopt print_eight_bit        # 日本語表示

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load common shell dotfiles and configs
for file in ~/.{path,exports,aliases,extra} `find ~/.zsh -follow -depth 1 -name "*.zsh"`; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
