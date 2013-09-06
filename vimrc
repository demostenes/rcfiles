set nocompatible               " be iMproved


filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'hallison/vim-markdown'
Bundle 'nvie/vim-flake8'
Bundle 'indentpython.vim'
Bundle 'python.vim'
Bundle 'git.zip'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'
Bundle 'FuzzyFinder'
"Bundle 'git://git.wincent.com/command-t.git' " to wymaga vim z wkompilowana
"obsluga ruby
Bundle 'jQuery'
Bundle 'http://github.com/gmarik/snipmate.vim.git'
Bundle 'Markdown'
Bundle 'ragtag.vim'
Bundle 'SuperTab'
Bundle 'file-line'
Bundle 'scrooloose/nerdtree'
Bundle 'pangloss/vim-javascript'
Bundle 'ciaranm/inkpot'
Bundle 'wombat256.vim'
Bundle 'sophacles/vim-bundle-mako'


filetype plugin indent on     " required by vundle!

" Note: This line MUST come before any <leader> mappings
let mapleader=","


colorscheme wombat256mod


" other settings
set nobackup

" ---------------
" UI
" ---------------
set ruler " Ruler on
set nu " Line numbers on
set nowrap " Line wrapping off
set laststatus=2 " Always show the statusline
set cmdheight=2
set encoding=utf-8

" ---------------
" Behaviors
" ---------------
syntax enable
set autoread " Automatically reload changes if detected
set wildmenu " Turn on WiLd menu
set hidden " Change buffer - without saving
set history=768 " Number of things to remember in history.
set cf " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite " Writes on make/shell commands
set timeoutlen=350 " Time to wait for a command (after leader for example)
set foldlevelstart=99 " Remove folds
set formatoptions=crql

" ---------------
" Text Format
" ---------------
set tabstop=4
set backspace=2 " Delete everything with backspace
set shiftwidth=4 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set backspace=2
set softtabstop=4

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase " Non-case sensitive search
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache,*.class

" ---------------
" Visual
" ---------------
set showmatch " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide " Hide mouse after chars typed
"set mouse=a " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U




"autocmd BufWritePost *.py call Pyflakes()
"autocmd BufWritePost *.py call Pep8()


" fuzzyfinder buffer
nmap <F11> :FufBuffer<CR>
imap <F11> <C-O>:FufBuffer<CR>

" fuzzyfinder file
nmap <F10> :FufFile<CR>
imap <F10> <C-O>:FufFile<CR>

" ostatnio widziane bufory
nmap <F12> :b#<CR>
imap <F12> <C-O>:b#<CR>

" Edit vimrc with ,v
nmap <silent> <leader>v :e ~/.vimrc<CR>

" ---------------
" NERDTree
" ---------------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup=1


" ---------------
" Fugitive
" ---------------
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
" Mnemonic, gu = Git Update
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nmap <Leader>gx :wincmd h<CR>:q<CR>


" ---------------
" Vundle
" ---------------
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bu :BundleInstall!<CR> " Because this also updates
nmap <Leader>bc :BundleClean<CR>



