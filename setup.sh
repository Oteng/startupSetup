#!/usr/bin/bash
#a simple bash or hell script to get you up and started

#install git

sudo apt-get install -y git-core

#install startup file from the startup repo
wget raw.github.com/startup-class/dotfiles/master/.screenrc -O .screenrc

git clone https://github.com/startup-class/setup.git
./setup/setup.sh


wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh


echo "logging in to heroku\n"


heroku login


echo "generating rsa key for heroku"


ssh-keygen -t rsa
heroku keys:add

echo "PS1='\[\033[01;35m\][\u@\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[01;35m\]]\[\033[01;34m\]$\[\033[00m\]'" >> ~/.bashrc_custom

echo "install sails js from npm\n"
npm install sails -g

echo "installing sails adaptor mongo\n"
npm install sails-mongo -g

npm install mongodb -g
npm install less -g
npm install sass -g
echo "install apache"
sudo apt-get install httpd
sudo service httpd start

sudo apt-get install mysql mysql-server
sudo service mysqld start

sudo /usr/bin/mysql_secure_installation

echo "install php \n"
sudo apt-get install php php-mysql


echo "exiting pls log back in to see changes"

exit
 
