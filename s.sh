#!/bin/bash

function patch_local() {
	cp -r ./nvim/* /home/jord/.config/nvim/
	cp ./.zshrc /home/jord/.zshrc
	cp ./.tmux.conf /home/jord/.tmux.conf
	echo "Succesfully patched local dotfiles!"
}



function patch_repo() {
	cp -r /home/jord/.config/nvim/* ./nvim/
	cp /home/jord/.zshrc ./.zshrc
	cp /home/jord/.tmux.conf ./.tmux.conf
	echo "Succesfully patched repository dotfiles!"
}



"$@"

