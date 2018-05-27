#!/usr/bin/env bash

# Update to the latest Homebrew.
brew update

# Upgrade already-installed formulae.
brew upgrade

# Install GNU core utilities.
brew install coreutils

# Install other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

brew install tree

brew install gnu-sed --with-default-names

# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Remove outdated versions from the cellar.
brew cleanup
