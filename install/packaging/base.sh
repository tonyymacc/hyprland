# Install all base packages
mapfile -t packages < <(grep -v '^#' "$HOME/.local/share/omarchy/install/base.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"
