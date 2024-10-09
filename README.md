# dotfiles
- manage config files
- uses GNU stow
    - by default stow set the target to the parent dir of the stow directory

# Usage
1) clone the repo in the home folder
2) `stow <package name>` to load a package (ex: `stow zsh` inside `dotfiles`)
    - `stow -t <target-dir> <package name>` to select target dir (ex: `stow -t /etc/coolercontrol cooler-control`)
