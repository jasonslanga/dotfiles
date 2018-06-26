" .vimrc configuration
" Maintainer: Jason Slanga <jslanga@gmail.com>
" Last change: 2018 May 18
"

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it change other options as a side effect
set nocompatible

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Line numbers
set ruler
set relativenumber		" change line numbers to relative numbers
set number
set re=2

" Indentation/Tab settings
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set textwidth=80

" set colorscheme
" set rtp+=~/.vim/bundle/vim-colors-solarized
syntax enable
" colorscheme solarized
" colorscheme slate
" colorscheme mustang
colorscheme moonfly

" Set background to transparent
hi Normal guibg=NONE ctermbg=NONE

" Managing Plugins
" *** Pathogen
"   http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/
" call pathogen#infect()
" call pathogen#helptags()
