#!/bin/sh

# Проверяем количество переданных аргументов
if [ $# -eq 0 ]; then
    echo "Не переданы аргументы."
    exit 1
fi

up_home_manager="false"
up_system="false"

# Перебираем все переданные аргументы
for arg in "$@"; do
    case $arg in
        -home)
            up_home_manager="true"
            ;;
        -system)
            up_system="true"
            ;;
        -any)
            up_home_manager="true"
            up_system="true"
            ;;
        *)
            echo "Неизвестный аргумент: $arg"
            ;;
    esac
done

# Проверяем, какие обновления нужно выполнить
if [ "$up_home_manager" = "true" ] && [ "$up_system" = "true" ]; then
    echo "Обновить home-manager и nixos? (y/n)"
    read -r answer
    if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
        echo "Вы выбрали 'да'"
    else
        echo "Вы выбрали 'нет/не распознано'"
        exit 0
    fi
elif [ "$up_home_manager" = "true" ]; then
    echo "Обновить home-manager? (y/n)"
    read -r answer
    if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
        echo "Вы выбрали 'да'"
    else
        echo "Вы выбрали 'нет/не распознано'"
        exit 0
    fi
elif [ "$up_system" = "true" ]; then
    echo "Обновить nixos? (y/n)"
    read -r answer
    if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
        echo "Вы выбрали 'да'"
    else
        echo "Вы выбрали 'нет/не распознано'"
        exit 0
    fi
else
    echo "Ничего не будет изменено..."
    exit 0
fi

# Выполняем обновления
if [ "$up_home_manager" = "true" ]; then
    git add .
    home-manager switch --flake ./
fi

if [ "$up_system" = "true" ]; then
    git add .
    nixos-rebuild switch --flake ./
fi

echo "Завершение..."
