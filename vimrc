set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" my bundles:
Bundle 'scrooloose/nerdtree'
Bundle 'pylint.vim'
Bundle 'python.vim--Vasiliev'



" other
filetype plugin indent on     " required by vundle!


" costam
set expandtab
"set textwidth=79
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set showmode ruler
set nomodeline
set nobackup
set statusline=%<%f\ (%{&encoding})\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set wmh=0
set hidden
set viminfo='200
set number
set nowrap
autocmd BufWritePre *.py normal m`:%s/\s\+$//e “

