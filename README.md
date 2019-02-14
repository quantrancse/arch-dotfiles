# Arch Linux Transformer
Inspired by the flexible transition between floating and titling layouts which can be fully navigate and control by both keyboard or mouse.
## Some details
+ **OS**: Arch Linux
+ **WM**: Awesome
+ **Terminal**: Termite
+ **Shell**: Zsh
+ **File Manager**: Nemo, Ranger
+ **Launcher**: Rofi
+ **Editors**: Spacemacs, VSCode and Vim
+ **Reader**: Okular
+ **Browser**: Google Chrome
+ **Theme**: Equilux
+ **Icons**: [Linebit](https://play.google.com/store/apps/details?id=com.edzondm.linebit) for Android, Arc

## Screenshots
![Screenshot1](./previews/preview1.png?raw=true)
Floating layout (neofetch, chrome, htop):
![Screenshot2](./previews/preview2.png?raw=true)
Titling layout (vim, ranger, ncmpcpp):
![Screenshot3](./previews/preview3.png?raw=true)
Clean desktop:
![Screenshot4](./previews/preview4.png?raw=true)
Lock screen with i3lock (specific script):
![Screenshot5](./previews/preview5.png?raw=true)

## Notes
+ Firstly, just install and config Arch Linux compatible with your system.
+ Some extra applications and pacakges that may needed: nerd font, fontconfig, oh-my-zsh, xvkbd, i3lock, lxappearance, mpv, mpvc, mpd, mpc, ncmpcpp, fcitx, fcitx-unikey, feh, ntfs-3g, pinta, gimp, copyq, calcurse, galculator, gpick, ...
+ Install "Vimium" extension for Chrome to navigate and control Chrome with vim keys.
+ If you want extra icons from "Linebit", install "Linebit" and use "Iconzy" to get the png icon file

## Keybinds
`super` = Windows key 
#### Basic control
+ `super + enter` - Spawn terminal
+ `super + shift + enter` - Spawn floating terminal
+ `super + e` - Launch VSCode
+ `super + shift + e` - Launch Emacs
+ `super + shift + f` - Launch Nemo
+ `super + d` - Launch rofi
+ `super + p` - Open htop
+ `super + q` - Close client
+ `super + alt + q` - Close all visible clients for the current tag
+ `super + ctrl + space` - Toggle floating client
+ `super + [1-0]` - Change workspace
+ `super + shift + [1-0]` - Move focused client to tag
+ `super + tab` - Switch to previous client
+ `super + grave` - Toggle sidebar
+ `super + s` - Tiling layout
+ `super + shift + s` - Floating layout
+ `super + w` - Maximized / Monocle layout
+ `super + [arrow keys]` - Change focus by direction
+ `super + j/k` - Cycle through clients
+ `super + h/l` - Add / remove clients to / from master area
+ `super + shift + [arrow keys] / [hjkl]` - Move client by direction. Move to edge if it is floating.
+ `super + ctrl + [arrow keys] / [hjkl]` - Resize
+ `super + f` - Toggle fullscreen
+ `super + m` - Toggle maximize
+ `super + n` - Minimize
+ `super + shift + n` - Restore minimized
+ `super + c` - Center floating client
+ `super + u` - Jump to urgent client (or back to last tag if there is no such client)
+ `super + shift + b` - Toggle bar
+ `super + t` - Toggle titlebar
+ `super + shift + t` - Toggle titlebar for all visible clients in selected tag
+ `super + =` - Toggle tray
+ `super + esc` - Exit screen

#### Funtion keys
+ `super + F1` - Lock Screen
+ `super + F2` - Open ranger
+ `super + F3` - Open nemo
+ `super + F4` - Open ncmpcpp
+ `super + F6 / F7 / F8` - Toggle / previous / next song mpd
+ `super + shift + F6 / F7 / F8` - Toggle / previous / next song mpv
+ `super + F9` - Open calcurse
+ `super + F10 / F11 / F12` - Toggle / decrease / increase volume

#### Take screenshot
+ `prtsc` - Take full screenshot
+ `super + shift + prtsc` - Select area to capture screenshot
+ `super + ctrl + prtsc` - Select area to copy to clipboard
+ `super + prtsc` - Browse screenshot
+ `super + alt + prtsc` - Edit most recent screenshot with gimp

#### View (resize and set floating client)
+ `super + ctrl + f` - Focused view
+ `super + ctrl + v` - Vertical view
+ `super + ctrl + t` - Tiny view
+ `super + ctrl + n` - Normal view

#### Move and modify UI
+ `super + (shift) + z` - Focus clients by index
+ `super + (shift) + -`  -  Increase / Decrease gaps size for the current tag
+ `super + shift  + ctrl + [arrow keys] / [hjkl]` - Move clients in floating mode
+ `super + ctrl + m` - Toggle maximize vertically
+ `super + shift + m` - Toggle maximize horizontally
+ `super + ctrl + [1-0]` - Toggle tag display
+ `super + alt + [1-0]` - Move all visible clients to tag
+ `super + ctrl + shift + [1-0]` - Toggle tag on focused client

#### Other
+ `super + shift + p` - Toggle keep on top
+ `super + ctrl + p` - Toggle sticky
+ `ctrl + space` - Dismiss notification
+ `super + shift + v` - Show main menu
+ `super + shift + r` - Reload awesome
+ `super + shift + x` - Quit awesome
+ `super + shift + ctrl + [right arrow / left arrow] (h / l)` - Increase / Decrease the number of columns

### Mouse
#### On desktop
+ `left click` - Dismiss all notifications, close sidebar and main menu
+ `double left click` - Jump to urgent client (or back to last tag if there is no such client)
+ `right click` - Main menu
+ `middle click` - Sidebar
+ `scroll up/down` - Cycle through tags
+ `move to left edge` - Show sidebar

#### On titlebars
+ `left click` - Focus and raise
+ `left click (drag)` - Move
+ `right click (drag)` - Resize
+ `middle click` - Close

#### On wibar icon (purple flower icon)
+ `left click` - Toggle sidebar
+ `right click` - Toggle tray
+ `middle click` - Toggle on-screen keyboard (xvkbd)

#### On tag icon
+ `left click` - Select workspace (tag)
+ `right click` - Move current focused client to workspace
+ `middle click` - Restore minimized clients

#### On layout icon
+ `left click` - Switch layouts (floating / titling / fullscreen)
+ `right click` - Show clients in the current workspace with rofi
+ `middle click` - Close focused clients
+ `side click` - Minimize and restore minimized

#### On sidebar
+ `left click` - Toggle
  + Volume bar : Toggle mute
  + CPU bar and RAM bar : Open htop
  + File : Launch Nemo
  + Search : Launh rofi
  + Exit : Exit screen
+ `right click` 
  + Music name : Open ncmpcpp 
  + Volume bar : Launch Pavucontrol
  + File : Open Windows DATA disk with Nemo
  + Search : Show run with rofi
+ `scroll up/down`
  + Volume bar : Increase / Decrease volume
  + Music name : next / previous song

### Special
+ `super + left click (drag)` - Move client
+ `super + middle click` - Close client
+ `super + right click` - Resize client

### Exit screen
+ `left click` - Choose option
+ `right click` or `middle click` - Cancel
+ Keyboard controls:
  + `escape` or `q` or `x` to cancel
  + `p` to poweroff
  + `r` to reboot
  + `s` to suspend
  + `e` to exit (logout)
  + `l` to lock
