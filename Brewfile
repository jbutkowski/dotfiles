# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we're using the latest Homebrew
update

tap "homebrew/cask"

# Install more recent versions of some OS X tools
brew "vim", args: ["override-system-vii"]

# Install the lastest Bash version
# Note: don't forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew "bash"
brew "bash-completion"

# Install wget with IRI support
brew "wget", args: ["enable-iri"]

# Install Heroku CLI
tap "heroku/brew"
brew "heroku"

# Install other useful binaries
brew "imagemagick", args: ["with-webp"]
