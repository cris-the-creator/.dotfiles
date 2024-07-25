#!/bin/bash 

function mrwatson() {
    local status=""
    if [[ "$(watson status)" == "No project started." ]]; then
        printf ""
        return
    fi
    local total=$(watson report -dcG | grep 'Total:' | sed 's/Total: //')
    printf "#[bg=default, fg=#ff757f] ▒ ${status} ${total} "
}

mrwatson
