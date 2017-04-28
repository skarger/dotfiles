execute pathogen#infect()

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set expandtab
set autoindent

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

set cursorline
"set cursorcolumn
set colorcolumn=80
highlight ColorColumn ctermbg=0*

set number
set ruler

set noswapfile

" Backspace deletes like most programs in insert mode
set backspace=2

" %f(Relative file path, F gives full)
" %m(Shows + if modified - if not modifiable)
" %r(Shows RO if readonly)
" %<(Truncate here if necessary)
" \ (Separator)
" %=(Right align)
" %l(Line number)
" %v(Column number)
" %L(Total number of lines)
" %p(How far in file we are percentage wise)
" %%(Percent sign)
set statusline=%f%m%r%<\ %=%l,%v\ [%L]\ %p%%

" Make sure it always shows
set laststatus=2

let g:elm_format_autosave = 1
let g:polyglot_disabled = ['elm']
