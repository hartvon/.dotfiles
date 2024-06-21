#!/usr/bin/env zsh

cd "$(dirname "$0")"

function sync_dotfiles() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude ".gitignore" \
		--exclude "README.md" \
		-avh --no-perms . ~
	source ~/.zprofile
}

sync_dotfiles

