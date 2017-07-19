#!/usr/bin/env bash

brew update

brew upgrade

# Install GNU core utilities
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

brew install tree

brew install gnu-sed --with-default-names

brew install bash
brew install bash-completion2

if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

brew cleanup
