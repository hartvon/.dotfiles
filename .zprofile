for file in ~/.scripts/.[^.]*; do
  source "$file"
done
unset file

# OS specific operation
if [[ "$(uname)" == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  ( \
    mv ~/.bin/fzf{-darwin-arm64,}; \
    mv ~/.bin/fd{-darwin-arm64,} \
  ) &> /dev/null
else
  ( \
    mv ~/.bin/fzf{-linux-amd64,}; \
    mv ~/.bin/fd{-linux-amd64,} \
  ) &> /dev/null
fi

source <(~/.bin/fzf --zsh)
source ~/.zshrc
