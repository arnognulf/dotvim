set listchars=tab:>-,eol:$,trail:.,extends:#
" toggle show newlines, blanks and tabs
map <F4> :set list! list?<CR>
set foldmethod=syntax
set nocompatible
set autoindent
set smartindent
set ignorecase
set smartcase
set showmatch
set guioptions-=T
set vb t_vb=
set incsearch
set ruler
set title
set number
set title
set hlsearch
set wrap
set backspace=indent,eol,start
" remove highlight from search
nmap <SPACE> <SPACE>:noh<CR>
imap jj <ESC>
imap <F1> <ESC>
vmap <F1> <ESC>
set softtabstop=4 shiftwidth=4 expandtab
"hi Tab gui=underline guifg=blue ctermbg=blue term=reverse

if has("autocmd")
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif
endif

filetype on
filetype plugin on
filetype indent on
" don't enable in vsvim
if v:version > 700
    " still want to use arrow keys in command mode
     noremap  <Up> <NOP>
     noremap  <Down> <NOP>
     noremap  <Left> <NOP>
     noremap  <Right> <NOP>
     inoremap  <Up> <NOP>
     inoremap  <Down> <NOP>
     inoremap  <Left> <NOP>
     inoremap  <Right> <NOP>
endif
" delete w/o putting text in buffer
vnoremap x "_x
vnoremap X "_X

noremap <Insert> ""
noremap  <PageUp> ""
noremap  <PageDown> ""
noremap  <End> ""
noremap  <Home> ""

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Bundle 'vim-scripts/guicolorscheme.vim'
Bundle 'endel/vim-github-colorscheme'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/L9'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'kien/ctrlp.vim'

" vim-scripts repos
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set t_Co=256
syntax on
runtime! plugin/guicolorscheme.vim
GuiColorScheme github

