set nocompatible
set number
syntax on
filetype plugin indent on

" whitespace
set tabstop=4
set shiftwidth=4
set expandtab

set backspace=indent,eol,start
set hlsearch
set ignorecase

"set colorscheme
"set background=dark


"use rhino js
command R execute '!rhino %'
command Console execute '%s/print/console.log/g'
command Print execute '%s/console.log/print/g'
