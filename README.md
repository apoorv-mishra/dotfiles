# dotfiles
Collection of my personal dotfiles.

### setup
* `cd ~`
* `git clone git@github.com:apoorv-mishra/dotfiles.git`
* `cd dotfiles`
* `git submodule update --init`
* `ln -si -t ~/ ~/dotfiles/vim/.vim`
* `ln -si -t ~/ ~/dotfiles/vim/.vimrc`

### add new vim plugin
* `cd ~/dotfiles`
* `git submodule add https://github.com/dense-analysis/<vim-plugin>.git`
* `git commit -m "Added <vim-plugin>"`

### remove vim plugin
* `cd ~/dotfiles`
* `git rm vim/.vim/bundle/<vim-plugin>`
* `git commit -m "Removed <vim-plugin>"`
