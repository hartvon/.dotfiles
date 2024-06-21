# Mac OS specific operation
if [[ "$(uname)" == "Drwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

for file in ~/.{prompt,exports,aliases,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

for file in ~/.scripts/.[^.]*; do
  source "$file"
done
unset file

source <(fzf --zsh)


