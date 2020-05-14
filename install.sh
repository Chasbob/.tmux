#!/bin/bash

SOURCE=$1
# takes one argument of the parent directory path
echo link .tmux
[ -h ~/.tmux ] && unlink ~/.tmux
[ -e ~/.tmux ] && mv ~/.tmux{,.bak}
ln -sf "$SOURCE/tmux" ~/.tmux

echo link .tmux.conf
[ -h ~/.tmux.conf ] && unlink ~/.tmux.conf
[ -e ~/.tmux.conf ] && mv ~/.tmux.conf{,.bak}
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

echo link .tmux.conf.local
[ -h ~/.tmux.conf.local ] && unlink ~/.tmux.conf.local
[ -e ~/.tmux.conf.local ] && mv ~/.tmux.conf.local{,.bak}
ln -s ~/.tmux/.tmux.conf.local ~/.tmux.conf.local
