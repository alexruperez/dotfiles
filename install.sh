#!/bin/sh
set -e

if ! xcode-select -p ; then
	xcode-select --install || true
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || true
brew doctor || true
brew update || true
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin'

brew install caskroom/cask/brew-cask || true
brew tap caskroom/versions || true
brew tap caskroom/fonts || true
brew cask install iterm2 || true
brew cask install textmate || true
brew cask install sourcetree || true
brew install imagemagick || true
brew install ffmpeg || true

brew install git || true

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

brew install rbenv ruby-build || true

rbenv install 2.2.2 || true
rbenv global 2.2.2
eval "$(rbenv init -)"
gem install bundler || true

brew install postgresql || true
initdb /usr/local/var/postgres || true

gem install lolcommits || true

gem install cocoapods || true
