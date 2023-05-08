#!/bin/bash

TMUX_CONF_DIR=$XDG_CONFIG_HOME/tmux
TPM_DIR=~/.tmux/plugins/tpm

if [ -d "$TPM_DIR" ]; then
   echo "Installing TPM"
   git clone https://github.com/tmux-plugins/tpm $TPM_DIR
fi

mkdir -p $TMUX_CONF_DIR
ln -s $DOTFILES/tmux/tmux.conf $TMUX_CONF_DIR/tmux.conf 
