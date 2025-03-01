# update + install programs
sudo pacman -Syu
sudo pacman -S yay

echo "Installing Utilities"
sudo pacman -S git gnome-disk-utility unzip neofetch zsh base-devel cmake python python-pip python-virtualenv dotnet-sdk blueman htop yt-dlp

echo "Installing Applications"
sudo pacman -S steam discord cmus redshift zed wezterm vi vim neovim qbittorrent pinta obs-studio gimp
yay -S ulauncher librewolf-bin apple-music-bin

echo "Installing Other"
sudo pacman -S gnome-themes-extra gtk-murrine-engine ly tela-circle-icon-theme-all starship
git clone https://github.com/Fausto-Korpsvart/Tokyonight-GTK-Theme.git ~/Downloads/themes/Tokyonight-GTK-Theme
sh ~/Downloads/themes/Tokyonight-GTK-Theme/themes/install.sh --theme purple

echo "Copying Config and Desktop Files"
# add .desktop files
mkdir ~/.local/share/applications
cp desktop/aseprite.desktop ~/.local/share/applications/
cp desktop/godot4_1.desktop ~/.local/share/applications/
cp desktop/godot4_3.desktop ~/.local/share/applications/

# copy .config files
cp wezterm.lua ~/.wezterm.lua
cp theme_toggle.sh ~/theme_toggle.sh
# cp .zshrc ~/.zshrc
cp -r zed/ ~/.config/zed/
