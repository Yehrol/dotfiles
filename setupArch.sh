# draft for a setup script.
# Should check if the packages are already installed, the os and add arguments
# to select what to install

# Oh My Posh
curl -s https://ohmyposh.dev/install.sh | bash -s

# ZSH
sudo pacman -S zsh
sudo pacman -S zsh-completions
chsh -s $(which zsh)

# GNU Stow
sudo pacman -S stow

# wezterm
# maybe later