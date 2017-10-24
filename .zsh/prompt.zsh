autoload -Uz vcs_info
setopt prompt_subst
zstyle ":vcs_info:*" enable git cvs svn
zstyle ":vcs_info:(git*):*" get-revision true
zstyle ":vcs_info:(git*):*" check-for-changes true
zstyle ":vcs_info:*" actionformats \
  "%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f "
zstyle ":vcs_info:*" formats       \
  "%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f "
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
local _branch="%c%u%m %{$fg[green]%}%b%{$reset_color%}"
local _repo="%{$fg[green]%}%r %{$fg[yellow]%}%{$reset_color%}"
local _revision="%{$fg[yellow]%}%.7i%{$reset_color%}"
local _action="%{$fg[red]%}%a%{$reset_color%}"
zstyle ":vcs_info:*" stagedstr "%{$fg[yellow]%}✓%{$reset_color%}"
zstyle ":vcs_info:*" unstagedstr "%{$fg[red]%}✗%{$reset_color%}"
zstyle ":vcs_info:git*" formats "$_branch:$_revision - $_repo"
zstyle ":vcs_info:git*" actionformats \
  "$_branch:$_revision:$_action - $_repo"
local _path="%{$fg[green]%}%C"
local _prompt="%{$fg[white]%}$"
PROMPT="$_path$_prompt%b%f%k "
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$'$(vcs_info_wrapper)'
