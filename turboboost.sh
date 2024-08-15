#!/bin/bash

# File with the parameter
FILE="/sys/devices/system/cpu/intel_pstate/no_turbo"

# Check the current value
current_value=$(cat $FILE)

# Toggle the value
if [ "$current_value" -eq 1 ]; then
    echo 0 | sudo tee $FILE
    echo "Turbo boost ENABLED"
else
    echo 1 | sudo tee $FILE
    echo "Turbo boost DISABLED"
fi
