# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load common shell dotfiles and configs
for file in ~/.{path,exports,aliases,extra} ; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
