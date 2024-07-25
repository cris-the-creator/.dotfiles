#!/bin/bash 

function mrwatson() {
    if [[ "$(cd /home/cris/.local/bin && ./watson status)" == "No project started." ]]; then
        printf ""
        return
    fi
    local project=$(cd /home/cris/.local/bin && ./watson status --project)
    local total=$(cd /home/cris/.local/bin && ./watson report -dcG | grep 'Total:' | sed 's/Total: //')
    printf "${total} [${project}]"
}

mrwatson

