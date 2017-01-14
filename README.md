rcfiles
=======

    git clone https://github.com/demostenes/rcfiles.git ~/rcfiles
    rm ~/.vimrc ~/.tmux.conf
    ln -s ~/rcfiles/vimrc ~/.vimrc
    ln -s ~/rcfiles/tmux.conf ~/.tmux.conf
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall

Ubuntu
======

    sudo apt-get -y install tmux vim-nox git && \
    git clone https://github.com/demostenes/rcfiles.git ~/rcfiles && \
    rm -f ~/.vimrc ~/.tmux.conf && \
    ln -s ~/rcfiles/vimrc ~/.vimrc && \
    ln -s ~/rcfiles/tmux.conf ~/.tmux.conf && \
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle && \
    vim +BundleInstall +qall
    
