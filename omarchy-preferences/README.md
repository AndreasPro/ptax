# Omarchy Migration Bundle — Touchpad Only

Scope limited to touchpad changes from Omarchy 4.0.6.

## What's included
`config/.config/hypr/input.lua` — contains the only touchpad customizations:
- 3-finger drag + natural (inverse) scrolling
- 4-finger horizontal workspace swipe (default is 3-finger, commented out)

## Restore on the fresh install
```bash
cd omarchy-preferences
./restore.sh
```
Copies `input.lua` into `~/.config/hypr/` and reloads Hyprland.
