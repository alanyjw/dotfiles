set nocompatible

"Automatic reloading of .vimrc
au! bufwritepost .vimrc source %

"Required for several plugins
filetype off

"Configurations for Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Plugins
Bundle 'gmarik/vundle'
Bundle "altercation/vim-colors-solarized.git"
Bundle 'corntrace/bufexplorer.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'mileszs/ack.vim.git'

""Language-related
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'pangloss/vim-javascript'
Bundle "digitaltoad/vim-jade.git"
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'plasticboy/vim-markdown'
"""This bundle causes file loads to be super slow
"Bundle "bakis2011/vim-css-color.git"

" enable matchit plugin for better % support in ruby files
runtime macros/matchit.vim

"Set color scheme
set background=light

"Set solarized options
colorscheme solarized

"Prevents some security exploits
set modelines=0

"Default encoding
set encoding=utf-8

"Show syntax highlighting
syntax on

"Perform indentation based on filetype plugin
filetype plugin indent on

"Pick up external file modifications
set autoread

"Show line numbers
set number numberwidth=2

"Show matching braces/brackets
set showmatch

"Set width of document
set tw=79

"Don't automatically wrap on load
set nowrap

"Don't automatically wrap text when typing
set fo-=t

"Highlight document width
set colorcolumn=80
highlight ColorColumn ctermbg=233

"For setting tab width and changing tabs to spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

"For indenting
set smartindent
set autoindent

"For autocompletion
set wildmode=list,longest,full

"For highlighting search results
set hlsearch

"For enabling incremental search, aka search-as-you-type
set incsearch

"Make search case insensitive
set ignorecase
set smartcase

"Disable backups
set nobackup
set nowritebackup

"Disable swap files
set noswapfile

"Natural split opening
set splitbelow
set splitright

"Show invisible characters
set list

"Customise invisible characters
set listchars=tab:▸\ ,eol:¬,trail:-,nbsp:+

" Highlight current line and column
hi CursorLine cterm=underline guibg=Gray20
hi CursorColumn ctermbg=0 guibg=Gray20

"Show current line info (current/total)
set ruler rulerformat=%=%l/%L

"Status line
set laststatus=2
set statusline=%t       "tail of the filename
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=[%c,%l] "cursor column
set statusline+=\ %P    "percent through file

"Key mappings
""Pain is good
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

inoremap <BS> <nop>
inoremap <Del> <nop>

""Toggle cursor line and column
nnoremap <silent><Leader>c :set cursorline! cursorcolumn!<CR>

""Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""Removes highlight of last search term
noremap <silent><Leader><space> :nohl<cr>

"Plugin mappings
""NERDTree
nnoremap <silent><Leader>t :NERDTreeToggle<cr>
nnoremap <silent><Leader>f :NERDTreeFind<cr>
