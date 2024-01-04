#!/usr/bin/env bash

languages=$(echo "bash c css html javascript lua python tmux typescript zsh" | tr " " "\n")
core_utils=$(echo "cat chmod chown cp curl find git git-commit git-rebase git-status git-worktree grep head kill less ls make man mv podman ps rename rm sed ssh stow tail tar tldr tr xargs" | tr " " "\n")

selected=$(echo -e "$languages\n$core_utils" | fzf)

if [[ -z $selected ]]; then
    exit 0
fi

read -p "Enter Query: " query

if echo $languages | grep -qs $selected; then
    query=$(echo $query | tr ' ' '+')
    tmux neww bash -c "curl -s cht.sh/$selected/$query | less"
else
    tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
fi
