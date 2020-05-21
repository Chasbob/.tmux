#!/bin/bash

SOURCE=$1
# takes one argument of the parent directory path
echo "Setup .tmux directory"
[ -h "$HOME"/.tmux ] && unlink "$HOME"/.tmux
[ -e "$HOME"/.tmux ] && mv "$HOME"/.tmux{,.bak}
ln -sf "$SOURCE/tmux" "$HOME"/.tmux

echo "Setup .tmux.conf"
[ -h "$HOME"/.tmux.conf ] && unlink "$HOME"/.tmux.conf
[ -e "$HOME"/.tmux.conf ] && mv "$HOME"/.tmux.conf{,.bak}
ln -s "$HOME"/.tmux/.tmux.conf "$HOME"/.tmux.conf

echo "Setup .tmux.conf.local"
[ -h "$HOME"/.tmux.conf.local ] && unlink "$HOME"/.tmux.conf.local
[ -e "$HOME"/.tmux.conf.local ] && mv "$HOME"/.tmux.conf.local{,.bak}
ln -s "$HOME"/.tmux/.tmux.conf.local "$HOME"/.tmux.conf.local
