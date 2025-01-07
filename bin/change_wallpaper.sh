
DIR_DARK="/nixcfg/wallpapers/dark"
DIR_LIGHT="/nixcfg/wallpapers/light"
DIR_ANY="/nixcfg/wallpapers/any"
DIR_THIS="/nixcfg/wallpapers/this"

# Сейчас ANY
if [ -d "$DIR_DARK" ] && [ -d "$DIR_LIGHT" ]; then
    mv "$DIR_THIS" "$DIR_ANY"
    mv "$DIR_LIGHT" "$DIR_THIS"
# Сейчас LIGHT
elif [ -d "$DIR_DARK" ] && [ -d "$DIR_ANY" ]; then
    mv "$DIR_THIS" "$DIR_LIGHT"
    mv "$DIR_DARK" "$DIR_THIS"
# Сейчас DARK
elif [ -d "$DIR_LIGHT" ] && [ -d "$DIR_ANY" ]; then
    mv "$DIR_THIS" "$DIR_DARK"
    mv "$DIR_ANY" "$DIR_THIS"
fi

