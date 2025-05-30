#!/bin/bash

CHOICE=$(echo -e " Выключение\n Перезагрузка\n Сон\n Выход" | wofi  -dmenu -p "Выберите действие:" --conf ~/.config/sway/power-config)

case "$CHOICE" in
    " Выключение") systemctl poweroff ;;
    " Перезагрузка") systemctl reboot ;;
    " Сон") systemctl suspend ;;
    " Выход") hyprctl dispatch exit ;;
    *) exit 1 ;;
esac
