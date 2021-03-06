" This Source Code Form is subject to the terms of the Mozilla Public
" License, v. 2.0. If a copy of the MPL was not distributed with this
" file, You can obtain one at http://mozilla.org/MPL/2.0/.

set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
filetype indent on
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
set incsearch
set ignorecase
set smartcase
set number
syntax enable
"set t_Co=16
set t_Co=256
"set foldenable
"set fdm=indent
nnoremap <space> za
set scrolloff=5
"set cursorline
set backspace=indent,eol,start
set laststatus=2
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
set history=50
set nohlsearch
set tw=0
set background=light

"Language Specifics
autocmd BufRead,BufNewFile Makefile*,*.mk,*.mk.in set noexpandtab
autocmd BufRead,BufNewFile *py,*pyw,*.cfg set filetype=python
autocmd BufRead,BufNewFile *py,*pyw,*.cfg match BadWhitespace /^t\+/
autocmd BufRead,BufNewFile *py,*pyw,*.cfg match BadWhitespace /\s\+$/
autocmd BufNewFile * set fileformat=unix

highlight BadWhitespace ctermbg=red guibg=red
