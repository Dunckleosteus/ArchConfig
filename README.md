# ArchConfig
Configuration files for my arch linux installation

# Apps
I installed the following apps on my system: 
- `zen-browser-bin`
- `yay`
- `lazygit`
- `sway` for window manager 
- `swaybg` for adding backgrounds to sway
- `swaylock` for lock screen
- `impala` for network
- `power-profile-daemon` for tweaking power profile
- `tlp` is a dependency for power-profile-deamon
- `ly` as a replacment for gdm
- `waybar` the bar at the top of the screen 
- `wofi`
- `neovim` with astrovim installed
- `kitty` for the terminal

# Configuration Notes

## Window Switcher
- Added window switcher script (`wofi/scripts/wofi-window-switcher`) with app icons
- Bound to `Super+Tab` in sway config
- Uses `swaymsg`, `jq`, and `wofi` to display and switch between open windows

## Waybar Setup
- Waybar launched via `swaybar_command` in sway config
- Added `exec env LC_ALL=en_GB.utf8 waybar` in sway config for reliability
- Tray module enabled in waybar/config for system icons

## Bluetooth (Fairphone)
- Using PipeWire audio stack (replaced PulseAudio redundancy)
- Required packages: `pipewire`, `pipewire-pulse`, `pipewire-alsa`
- Blueman applet (`blueman-applet`) for GUI Bluetooth management
- Waybar tray displays Bluetooth status
- A2DP profile support via `pipewire-pulse`

## Git Recovery
- Restored configuration from git stash after system issues
- Added `.gitignore` entry for `htop/htop_history` (runtime file)
