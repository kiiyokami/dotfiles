# Symlink dotfile config to home directory
ln -s $HOME/.dotfiles $HOME


# Install packages

$echo "[1] Debian [2] Arch"
read -p "Select your distribution: " -n 1 -r
echo
if [[ $REPLY =~ ^[1]$ ]]
then
    echo "Installing Debian packages..."
    sudo apt install -y $(cat packages.txt)
elif [[ $REPLY =~ ^[2]$ ]]
then
    echo "Installing Arch packages..."
    sudo pacman -S --needed - < packages.txt
else
    echo "Invalid input. Exiting..."
    exit 1
fi

