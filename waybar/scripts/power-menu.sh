#!/usr/bin/env bash

current=$(powerprofilesctl get)

perf="⚡ Performance"
bal="⚖  Balanced"
save="🪫 Power Saver"

case "$current" in
  performance)
    perf="▶ $perf"
    preselect="$perf"
    ;;
  balanced) 
    bal="▶ $bal"
    preselect="$bal"
    ;;
  power-saver)
    save="▶ $save"
    preselect="$save"
    ;;
esac

menu=$(printf "%s\n%s\n%s\n──────────\n⏻ Power Off\n🔄 Reboot\n🌙 Lock" \
  "$perf" "$bal" "$save")

choice=$(echo "$menu" | wofi \
  --dmenu \
  --prompt "Power" \
  --cache-file /dev/null \ # stops wofi from autosorting
  --preselect "$preselect")

case "$choice" in
  *Performance*)
    powerprofilesctl set performance
    ;;
  *Balanced*)
    powerprofilesctl set balanced
    ;;
  *Power\ Saver*)
    powerprofilesctl set power-saver
    ;;
  *Power\ Off*)
    systemctl poweroff
    ;;
  *Reboot*)
    systemctl reboot
    ;;
  *Lock*)
    swaylock -f -c 000000
    ;;
esac

