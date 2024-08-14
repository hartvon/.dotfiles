setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e
bindkey '^[[1;5C' emacs-forward-word
bindkey '^[^[[D' emacs-backward-word

# Setup editor
export VISUAL=vim
export EDITOR=vim
export PATH=$PATH:~/.bin:~/.scripts

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

fpath=(~/.completions $fpath)

# Use modern completion system
autoload -Uz compinit
compinit

for file in ~/.{prompt,aliases,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done

