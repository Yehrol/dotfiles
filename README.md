# dotfiles

- manage config files
- uses GNU stow
  - by default stow set the target to the parent dir of the stow directory

## Usage

1. clone the repo in the home folder
2. `stow <package name>` to load a package (ex: `stow zsh` inside `dotfiles`)
   - `stow -t <target-dir> <package name>` to select target dir (ex: `stow -t /etc/coolercontrol cooler-control`)

# Other

## Kernel config

- to control amd gpu fan : add `amdgpu.ppfeaturemask=0xffffffff` to GRUB_CMDLINE_LINUX_DEFAULT in /etc/default/grub
- to disable split lock detection : add `split_lock_detect=off` to GRUB_CMDLINE_LINUX_DEFAULT in /etc/default/grub

## Hyprland specific

- install xorg-xhost and hyprpolkitagent for process that need privilege (ex: timeshift)
