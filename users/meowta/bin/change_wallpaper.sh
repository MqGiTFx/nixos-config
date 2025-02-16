#!/bin/bash

# Укажите директорию
DIRECTORY="/nixcfg/users/$USER/wallpapers"

# Выбор случайного файла
RANDOM_FILE=$(ls "$DIRECTORY" | shuf -n 1)

swww img "$DIRECTORY/$RANDOM_FILE"
