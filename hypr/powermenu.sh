#!/bin/bash

# Options for powermenu
options=" Shutdown\n Reboot\n Suspend\n Lock\n Logout"

# Variable passed to rofi
chosen="$(echo -e "$options" | rofi -dmenu -i -p "Power Menu")"

case $chosen in
    " Shutdown")
        systemctl poweroff
        ;;
    " Reboot")
        systemctl reboot
        ;;
    " Suspend")
        systemctl suspend
        ;;
    " Lock")
        swaylock  # Adjust this if you're using another lock screen tool
        ;;
    " Logout")
        hyprctl dispatch exit
        ;;
    *)
        ;;
esac

