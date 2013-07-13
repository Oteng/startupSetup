#!/usr/bin/bash
#a simple bash or shell script to get you up and 
# started

#install git
sudo apt-get install -y git-core 

#install startup file from the startup repo
wget raw.github.com/startup-class/dotfiles/master/.screenrc -O .screenrc

git clone https://github.com/startup-class/setup.git
./setup/setup.sh


echo 'exiting pls log back in to see changes '

exit
