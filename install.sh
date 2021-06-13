#!/bin/bash
# This is an abomination. -kplant

dotfiles=(
	".bashrc"							"$HOME"
	".bash_profile"				"$HOME"
	".zshrc"							"$HOME"
	"vimrc"								"$HOME/.vim"
	"ycm_extra_conf.py"		"$HOME/.vim"
	"alacritty.yml"				"$HOME/.config/alacritty"
	"libvirt.conf"				"$HOME/.config/libvirt"
	"tmux.conf"						"$HOME/.config/tmux"
)

dotfiles_len="${#dotfiles[@]}"

if [[ $((dotfiles_len % 2)) != 0 ]]; then
	echo "ERROR: Invalid dotfiles array format."
	exit 1
fi

function file_path() {
	local file="$1"
	local path="$2"

	[[ "$path" != */ ]] && path="$path/"
	echo "${path}${file}"
}

if [[ $1 == "-y" ]] || [[ $1 == "--yes" ]]; then
	REPLY=y
else
	echo "This will remove the following configuration files, if they are"
	echo "already present, and replace them with **hard links** to the"
	echo "configuration files found in this repository:"
	echo

	for ((i=0; i<$dotfiles_len; i+=2)) do
		file_path "${dotfiles[$i]}" "${dotfiles[$i + 1]}"
	done

	echo
	read -p "Are you sure you want to continue? [y/n] " -n 1 -r
	echo
	echo
fi

[[ ! $REPLY =~ ^[Yy]$ ]] && exit 1

for ((i=0; i<$dotfiles_len; i+=2)) do
	file="${dotfiles[$i]}"
	path="${dotfiles[$i + 1]}"
	full_path="$(file_path $file $path)"

	rm -f $full_path
	mkdir -p $path
	ln -v $file $full_path
done
