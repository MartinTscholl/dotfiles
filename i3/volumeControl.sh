#!/usr/bin/env bash

# You can call this script like this:
# $ ./volumeControl.sh up
# $ ./volumeControl.sh down
# $ ./volumeControl.sh mute

# Script modified from these wonderful people:
# https://github.com/dastorm/volume-notification-dunst/blob/master/volume.sh
# https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a

function get_volume {
    pamixer --get-volume
}

function is_mute {
    pamixer --get-mute
}

function send_notification {
    iconSound="🔊"
    iconMuted="婢"
    if is_mute ; then
        dunstify -i $iconMuted -r 2593 -u normal "mute"
    else
        volume=$(get_volume)
        # Make the bar with the special character ─ (it's not dash -)
        # https://en.wikipedia.org/wiki/Box-drawing_character
        bar=$(seq --separator="─" 0 "$((volume / 5))" | sed 's/[0-9]//g')
        # Send the notification
        #dunstify -i $iconSound -r 2593 -u normal "$volume    $bar"
    fi
}

case $1 in
    up)
        pamixer -i 5
        send_notification
        ;;
    down)
        pamixer -d 5    
        send_notification
        ;;
    mute)
        pamixer -t
        send_notification
        ;;
esac
