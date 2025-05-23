#!/bin/bash

# Diretório com os wallpapers
WALLPAPER_DIR="$HOME/Imagens/wallpapers"
# Monitor alvo (descubra com `hyprctl monitors`)
MONITOR=$(hyprctl monitors | grep "Monitor" | head -n 1 | awk '{print $2}')

# Escolhe imagem aleatória
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

# Gera config do Hyprpaper
cat > "$HOME/.config/hypr/hyprpaper.conf" <<EOF
preload = $WALLPAPER
wallpaper = $MONITOR,$WALLPAPER
EOF
