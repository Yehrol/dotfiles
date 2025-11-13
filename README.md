# dotfiles

- manage config files
- uses GNU stow
  - by default stow set the target to the parent dir of the stow directory

## Usage

1. clone the repo in the home folder
2. `stow <package name>` to load a package (ex: `stow zsh` inside `dotfiles`)
   - `stow -t <target-dir> <package name>` to select target dir (ex: `stow -t /etc/coolercontrol cooler-control`)

# Install

## SDDM keyboard layout

```
localectl set-x11-keymap ch
```

## Hyprland specific

- install xorg-xhost and hyprpolkitagent for process that need privilege (ex: timeshift)

## UWSM

```
systemctl --user enable --now waybar.service
systemctl --user enable --now hyprpolkitagent.service
systemctl --user enable --now hyprpaper.service
```

# Other

## Make

set `MAKEFLAGS="--jobs=$(nproc)"` in /etc/makepkg.conf

## Kernel config

- to control amd gpu fan : add `amdgpu.ppfeaturemask=0xffffffff` to GRUB_CMDLINE_LINUX_DEFAULT in /etc/default/grub
  - mmh.. looks like it's the cause of gpu hang. flags : https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/amd/include/amd_shared.h#n178
  - apparently 0x4000 should be sufficient. (source : https://wiki.archlinux.org/title/AMDGPU#Boot_parameter)
- to disable split lock detection : add `split_lock_detect=off` to GRUB_CMDLINE_LINUX_DEFAULT in /etc/default/grub

## BTRFS. Booting into read-only snapshots

- https://wiki.archlinux.org/title/Snapper#Booting_into_read-only_snapshots
- add `grub-btrfs-overlayfs` to the end of the `HOOKS` array in `/etc/mkinitcpio.conf`, then `mkinitcpio -P` to regenerate initramfs

# TODO

- fix wlogout icon path (change wlogout ?)
- add all required packages to install
  - (add a script to automate the install process)
- fix waybar media controller not working after a bit (same for media key, so may be something else)
- change dunst notification timeout
- clean files
  - aliases
  - config
  - env
  - zshenv, zshrc
