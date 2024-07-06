for file in ~/.scripts/.[^.]*; do
  source "$file"
done
unset file

# Mac OS specific operation
if [[ "$(uname)" == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  cp ~/.bin/fzf{-darwin-arm64,} && source <(~/.bin/fzf --zsh)
else
  cp ~/.bin/fzf{-linux-amd64,} && source <(~/.bin/fzf --zsh)
fi


