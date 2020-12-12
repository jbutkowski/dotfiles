# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we're using the latest Homebrew
update

# Install more recent versions of some OS X tools
install vim --override-system-vii

tap caskroom/cask
install brew-cask

tap homebrew/dupes
tap homebrew/versions

# Install Bash 4
# Note: don't forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
install bash
install bash-completion

# Install wget with IRI support
install wget --enable-iri

cask install heroku-toolbelt

# Install Powerline Fonts
tap homebrew/cask-fonts
cask install font-hack-nerd-font

# Install PHP7
tap homebrew/homebrew-php
install php70

# Install other useful binaries
install imagemagick --with-webp

tap gapple/services

# Remove outdated versions from the cellar
cleanup
