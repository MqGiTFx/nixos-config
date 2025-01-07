#!/bin/bash

# Папка с обоями
WALLPAPER_DIR="/nixcfg/home-manager/modules/hyprland/wallpapers"

echo $(pwd) > /home/meowta/qwq_set.txt

# Выбор случайного файла из папки
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Проверка, найден ли файл
if [ -n "$RANDOM_WALLPAPER" ]; then
    # Установка обоев
    swaybg -i "$RANDOM_WALLPAPER"
else
    echo "Не найдено ни одного файла в папке $WALLPAPER_DIR"
fi
