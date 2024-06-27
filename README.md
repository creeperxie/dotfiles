# Dotfiles

## Prerequires

```nu
# install git
sudo pacman -S git
# install paru, an aur helper
git clone https://aur.archlinux.org/paru-bin.git ~/paru-bin
cd ~/paru-bin
makepkg -sic
# clone repository
git clone https://github.com/creeperxie/dotfiles.git ~/dotfiles
```

## Sway

```nu
# install sway with input method popups v2 patch and other things used on config
paru -S sway-im swaybg swaylock waybar alacritty rofi
# copy config
mkdir ~/.config/sway/
cp ~/dotfiles/.config/sway/config ~/.config/sway/
# download external file, catppuccin theme
curl https://github.com/catppuccin/i3/raw/main/themes/catppuccin-mocha -o ~/.config/sway/catppuccin-mocha
```

## Rofi

```nu
# install rofi and font used on config
paru -S rofi ttf-jetbrains-mono-nerd
# copy config
mkdir ~/.config/rofi/ ~/.local/share/rofi/themes/
cp ~/dotfiles/.config/rofi/config.rasi ~/.config/rofi/
# download external file, catppuccin theme
curl https://github.com/catppuccin/rofi/raw/main/basic/.local/share/rofi/themes/catppuccin-mocha.rasi -o ~/.local/share/rofi/themes/catppuccin-mocha.rasi
```

## Nushell

```nu
# install nushell
paru -S nushell
# copy config
cp ~/dotfiles/.config/nushell/config.nu ~/.config/nushell/
cp ~/dotfiles/.config/nushell/env.nu ~/.config/nushell/
```

## Helix

```nu
# install helix
paru -S helix
# optional, install language server
paru -S clangd haskell-language-server rust-analyer
# copy config
mkdir ~/.config/helix/
cp ~/dotfiles/.config/helix/config.toml ~/.config/helix/
```

## Zellij

```nu
# install zellij
paru -S zellij
# copy config
mkdir ~/.config/zellij/
cp ~/dotfiles/.config/zellij/config.kdl ~/.config/zellij/
```
