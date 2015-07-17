#!/bin/sh

xcode-select --install￿

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"￿
brew doctor￿
brew update￿
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin'

brew install caskroom/cask/brew-cask￿
brew tap caskroom/versions￿
brew tap caskroom/fonts￿
brew cask install iterm2￿
brew cask install textmate￿
brew cask install sourcetree￿
brew install imagemagick￿
brew install ffmpeg￿

brew install git￿

git config --global alias.co checkout
git config --global alias.a add
git config --global alias.c commit
git config --global alias.b branch
git config --global alias.m merge
git config --global alias.s status
git config --global core.mergeoptions --no-edit
git config --global push.default current
git config --global color.ui true
git config --global format.pretty oneline
git config --global help.autocorrect 50
git config --global diff.tool "opendiff"
git config --global merge.tool "opendiff"

curl -L http://install.ohmyz.sh | sh

brew install rbenv ruby-build￿

rbenv install 2.2.2￿
rbenv global 2.2.2
eval "$(rbenv init -)"
gem install bundler￿

brew install postgresql￿
initdb /usr/local/var/postgres￿

gem install lolcommits￿

gem install cocoapods￿
