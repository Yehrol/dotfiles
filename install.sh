# draft for a setup script.
# Should check if the packages are already installed, the os and add arguments
# to select what to install

# YAY
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Oh My Posh
curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh font install JetBrainsMono

# ZSH
sudo pacman -S zsh
#sudo pacman -S zsh-completions # shouldnt be needed
chsh -s $(which zsh)

# GNU Stow
sudo pacman -S stow

# FZF
sudo pacman -S fzf

# TODO: list things
# alacritty
# hyprland
# mpv
# thunar
# thunar_archive_plugin # TODO change
# file-roller # TODO change
# ...

# things to install and setup
# rclone
# nextcloud
