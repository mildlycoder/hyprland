#!/bin/bash

STATE_FILE="/tmp/clock_state"

# Check the current state or default to "time"
if [[ -f $STATE_FILE ]]; then
    STATE=$(cat $STATE_FILE)
else
    STATE="time"
fi

# Toggle between "time" and "date"
if [[ "$STATE" == "time" ]]; then
    echo "date" > $STATE_FILE
    echo $(date "+%A, %dth %B %Y")
else
    echo "time" > $STATE_FILE
    echo $(date "+%I:%M %p")
fi

