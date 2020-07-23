# System
# Install Nodejs
curl -sL install-node.now.sh/lts | sudo bash

# install Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update  
sudo apt-get install yarn -y
sudo apt-get install python3-pip neovim -y


# python
sudo pip3 install pynvim
sudo pip3 install -U msgpack

# Install lint
curl -L "$(curl -Ls https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" -o tflint.zip && unzip tflint.zip && sudo mv tflint /usr/local/bin && rm tflint.zip 
sudo apt-get install shellcheck jsonlint yamllint ansible-lint -y
yarn global add write-good tidy-html5 proselint
yarn global add eslint jshint jsxhint stylelint sass-lint
yarn global add markdownlint-cli raml-cop

# Install tools
sudo apt-get install silversearcher-ag ripgrep universal-ctags fzf -y
curl -L https://raw.githubusercontent.com/rupa/z/master/z.sh -o z.sh && chmod +x z.sh && sudo mv z.sh /usr/local/bin

#install cask-fonts from https://github.com/ryanoasis/nerd-fonts
#./install.sh font-hack-nerd-font
#./install.sh font-iosevka-nerd-font-mono
#./install.sh font-jetbrains-mono
#./install.sh font-fira-code
# fc-cache -fv
