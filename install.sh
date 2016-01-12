#install vim
sudo apt-get install vim-gtk

#clone repo and create structure
git clone https://github.com/ramonsanabria/dotvim.git ~/.vim
mkdir ~/.vim/bundle
mkdir ~/.vim/.backup
mkdir ~/.vim/.swap
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/.vim/vimrc ~/.vimrc

#install all plugins
vim +BundleInstall +qall

#compile YCM
cd ~/.vim/bundle/YouCompleteMe/
./install.sh --clang-completer

#install dependencies
sudo apt-get install ctags

#use vimdiff as git mergetool
git config merge.tool vimdiff
git config merge.conflictstyle diff3
git config mergetool.prompt false

#install font
mkdir -p ~/.fonts
cp ~/.vim/fonts/Literation\ Mono\ Powerline.ttf ~/.fonts
sudo fc-cache -f -v

#configure terminator
mkdir -p ~/.config/terminator/
cp ~/.vim/terminator_config/config ~/.config/terminator/

#install silversearcher
sudo apt-get install silversearcher-ag

#config term for 256 bits colors
export TERM=xterm-256color
