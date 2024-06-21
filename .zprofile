for file in ~/.scripts/.[^.]*; do
  source "$file"
done
unset file

# Mac OS specific operation
if [[ "$(uname)" == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  source <(~/.bin/fzf-darwin-arm64 --zsh)
else
  source <(~/.bin/fzf-linux-amd64 --zsh)
fi


