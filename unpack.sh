#!/usr/bin/env bash
# Lots borrowed from github.com/mathiasbyens/dotfiles/bootstrap.sh

git pull origin master

function unpack() {
	rsync --exclude ".git/" --exclude "unpack.sh" --exclude "README.md" \
	  --exclude "LICENSE-MIT.txt" --exclude "disable*" -av --no-perms . ~
}

read -p "This may overwrite existing files in your home directory. Continue?[y/n] " -n 1

echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
	unpack
fi

unset unpack
