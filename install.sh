#!/bin/bash

dotfiles=(
	.alacritty.yml
	.bash_profile
	.bashrc
	.tmux.conf
	.vimrc
	.ycm_extra_conf.py
	.zshrc
)

echo "This script will place **hard links** in your home directory to "
echo "the following files:"
echo

for i in "${dotfiles[@]}"; do echo $i; done

echo
echo "**IF THESE FILES ARE ALREADY PRESENT THEY WILL BE REPLACED**"
read -p "Are you sure you want to continue? [y/n] " -n 1 -r
echo

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
	[[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi

for i in "${dotfiles[@]}"; do
	rm -f ~/$i
	ln -v $i ~
done
