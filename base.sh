# Install all base packages
mapfile -t packages < <(grep -v '^#' "base.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"
