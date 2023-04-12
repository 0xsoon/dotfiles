# Install git
sudo yum update -y 

# Install git in your EC2 instance
sudo yum update

# Installing ZSH
sudo yum -y install zsh

# Check ZSH has been installed 
zsh --version

# Install "util-linux-user" because "chsh" is not available by default
# See https://superuser.com/a/1389273/599050
sudo yum install util-linux-user

# Install code-server
curl -fsSL https://code-server.dev/install.sh | sh

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Usage
nvm install node # "node" is an alias for the latest version
nvm install 14.7.0 # or 16.3.0, 12.22.1, etc
nvm use node
nvm ls

# Install Homebrew
git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
mkdir ~/.linuxbrew/bin
ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin
eval $(~/.linuxbrew/bin/brew shellenv)

# Install nginx
brew install nginx

