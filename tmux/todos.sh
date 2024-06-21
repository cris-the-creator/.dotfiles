#!/bin/bash

todo_count() {
	local count=$(todo -c)
	if [[ $(todo -c) == 0 ]]; then
		echo ""
		return
	fi
	echo "#[bg=default, fg=#4fd6be] ▒  ${count} "
}

todo_count
