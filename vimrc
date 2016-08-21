execute pathogen#infect()

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" default, but maybe i should make this ruby specific
set expandtab
set shiftwidth=2
set softtabstop=2

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

set cursorline
"set cursorcolumn
set colorcolumn=80
highlight ColorColumn ctermbg=0*

set number

set noswapfile

" ruby
let ruby_space_errors = 1

let g:syntastic_python_checkers = ['flake8']
