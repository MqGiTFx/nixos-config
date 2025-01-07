
DIR_DARK="/nixcfg/wallpapers/dark"
DIR_LIGHT="/nixcfg/wallpapers/light"
DIR_ANY="/nixcfg/wallpapers/any"
DIR_THIS="/nixcfg/wallpapers/this"

# Сейчас ANY
if [ -d "$DIR_DARK" ] && [ -d "$DIR_LIGHT" ]; then
    echo ANY
# Сейчас LIGHT
elif [ -d "$DIR_DARK" ] && [ -d "$DIR_ANY" ]; then
    echo LIGHT
# Сейчас DARK
elif [ -d "$DIR_LIGHT" ] && [ -d "$DIR_ANY" ]; then
    echo DARK
fi

