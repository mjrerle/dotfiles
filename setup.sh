#!/bin/bash

brew install vim
brew install nvm
brew install mariadb
brew install mongo
brew install php
brew install redis
brew install composer
brew install apache-httpd
brew install wp-cli
brew install hugo

git config --global user.name merle
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

cp -rf ~/Documents/dotfiles/.bash ~/
cp -rf ~/Documents/dotfiles/.bashrc ~/
cp -rf ~/Documents/dotfiles/.profile ~/

. ~/.profile
composer global require laravel/valet
nvm install 9.11.2
npm i -g loopback
npm i -g pm2

cd ~/Downloads
curl -O https://s3-us-west-1.amazonaws.com/uswest-nc.release.dbkoda/dbkoda-latest.dmg
curl -O https://download.jetbrains.com/webide/PhpStorm-2018.1.6.dmg
curl -O https://iterm2.com/downloads/stable/iTerm2-3_1_7.zip
curl -O https://files.phpmyadmin.net/phpMyAdmin/4.8.2/phpMyAdmin-4.8.2-all-languages.zip
curl -O https://downloads.mongodb.com/compass/mongodb-compass-1.14.6-darwin-x64.dmg
curl -O https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=en-US
curl -O https://dl.pstmn.io/download/latest/osx
curl -O https://download.sublimetext.com/Sublime%20Text%20Build%203176.dmg
curl -O https://download.filezilla-project.org/client/FileZilla_3.34.0_macosx-x86_setup_bundled.dmg

mkdir -p ~/dev/www
cd

