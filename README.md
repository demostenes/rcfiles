rcfiles
=======

    git clone https://github.com/demostenes/rcfiles.git ~/rcfiles
    rm ~/.vimrc ~/.tmux.conf
    ln -s ~/rcfiles/vimrc ~/.vimrc
    ln -s ~/rcfiles/tmux.conf ~/.tmux.conf
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall
