"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 
filetype off
set rtp+=~/develop/projects/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My plugins
Bundle 'fholgado/minibufexpl.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'noahfrederick/Hemisu'
Bundle 'dantler/vim-alternate'
Bundle 'vim-scripts/taglist.vim'

filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Syntax highlight
syntax on

" Show line numbers
set number


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

set background=dark

colorscheme solarized
" colorscheme hemisu

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
    set guifont=Inconsolata\ 11
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => C/C++ Format
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cindent
set cinoptions+=g0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CTAGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search tags file up to HOME
set tags+=tags;~,TAGS;~

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => USEFUL MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Insert new lines BEFORE and AFTER current line without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

