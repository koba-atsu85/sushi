#!/bin/bash -ex
sudo -s
yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison git

git --version

git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile

echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

source ~/.bashrc

exec $SHELL -l

git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

cd ~/.rbenv/plugins/ruby-build

./install.sh

rbenv install 2.3.0; rbenv rehash

rbenv global 2.3.0

ruby -v

which gem

which ruby

gem install bundler --no-rdoc --no-ri

rbenv rehash

gem install rails

rbenv rehash

rails -v

which rails
