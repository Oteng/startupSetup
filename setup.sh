#!/usr/bin/bash
#a simple bash or hell script to get you up and started

#install git

sudo apt-get install -y git-core

#install startup file from the startup repo
wget raw.github.com/startup-class/dotfiles/master/.screenrc -O .screenrc

git clone https://github.com/startup-class/setup.git
./setup/setup.sh

echo "\n\n[\033[01;30m\]"
echo "installing heroku\n"
echo "\n\n[\033[00m\]"
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

echo "\n\n[\033[01;30m\]"
echo "logging in to heroku\n"
echo "\n\n[\033[00m\]"

heroku login

echo "\n\n[\033[01;30m\]"
echo "generating rsa key for heroku"
echo "\n\n[\033[00m\]"

ssh-keygen -t rsa
heroku keys:add

echo "PS1='\[\033[01;35m\][\u@\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[01;35m\]]\[\033[01;34m\]$\[\033[00m\]'" >> ~/.bashrc_custom

echo "\n\n[\033[01;30m\]"
echo "exiting pls log back in to see changes"
echo "\n\n[\033[00m\]"
exit
 
