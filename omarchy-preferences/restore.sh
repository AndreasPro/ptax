#!/bin/bash
# Omarchy migration — touchpad settings only.
# Run on the FRESH install after first boot.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Restoring touchpad config (~/.config/hypr/input.lua)"
cp -av "$HERE/config/.config/hypr/input.lua" "$HOME/.config/hypr/input.lua"

echo "==> Reloading Hyprland"
hyprctl reload && hyprctl configerrors

echo "Done. Touchpad settings applied:"
echo "  - 3-finger drag + natural scroll"
echo "  - 4-finger horizontal workspace swipe"
