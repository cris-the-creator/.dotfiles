#!/bin/bash 

function mrwatson() {
    local status=""
    if [[ "$(cd /home/cris/.local/bin && ./watson status)" == "No project started." ]]; then
        printf ""
        return
    fi
    local total=$(cd /home/cris/.local/bin && ./watson report -dcG | grep 'Total:' | sed 's/Total: //')
    printf "#[bg=default, fg=#ff757f] ▒ ${status} ${total} "
}

mrwatson
