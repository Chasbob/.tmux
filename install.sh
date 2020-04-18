#!/bin/bash

# takes one argument of the parent directory path
test -e ~/.tmux && mv ~/.tmux{,.bak}
ln -s "$1"/tmux ~/.tmux

test -e ~/.tmux.conf && mv ~/.tmux.conf{,.bak}
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

test -e ~/.tmux.conf.local && mv ~/.tmux.conf.local{,.bak}
ln -s ~/.tmux/.tmux.conf.local ~/.tmux.conf.local
