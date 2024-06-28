#!/usr/bin/env zsh

cd "$(dirname "$0")"

function sync_dotfiles() {
	rsync --exclude ".git/" \
		  --exclude ".DS_Store" \
		  --exclude ".osx" \
		  --exclude "bootstrap.sh" \
		  --exclude ".gitignore" \
		  --exclude "README.md" \
		  -avh --no-perms $BAKOPT \
          . ~
	source ~/.zprofile
}

if [[ "$1" == "--backup" ]] || [[ "$1" == "-b" ]]; then
    BAKOPT=(-b --backup-dir=dotbak)
fi

sync_dotfiles

