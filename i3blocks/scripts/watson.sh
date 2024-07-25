#!/bin/bash 
echo $(watson status)
if [[ "$(watson status)" == "No project started." ]]; then
    echo "N"
    exit 0
fi

#TOTAL=$(watson report -dcG | grep 'Total:' | sed 's/Total: //')
TOTAL=$(watson status)
echo "$TOTAL"

