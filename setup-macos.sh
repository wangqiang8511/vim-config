# Install Nodejs
curl -sL install-node.now.sh/lts | bash

# python
pip3 install --user pynvim

# System
brew tap homebrew/cask-fonts
brew search nerd-font
brew cask install font-hack-nerd-font
brew cask install font-iosevka-nerd-font-mono
brew cask install font-jetbrains-mono
brew cask install font-fira-code

# Linter
brew install shellcheck jsonlint yamllint tflint ansible-lint
brew install tidy-html5 proselint write-good

yarn global add eslint jshint jsxhint stylelint sass-lint
yarn global add markdownlint-cli raml-cop

pip3 install --user vim-vint pycodestyle pyflakes flake8

# System Tool
brew install the_silver_searcher
brew install rg
brew install z
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install fzf
