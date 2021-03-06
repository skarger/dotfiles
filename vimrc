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
"let g:polyglot_disabled = ['elm']
let g:elm_setup_keybindings = 0

" for CommandT
let g:CommandTMaxFiles=1600000
let g:CommandTWildIgnore=&wildignore . ",*/node_modules,tmp"

"if &term =~ "xterm" || &term =~ "screen"
"  let g:CommandTCancelMap = ['<ESC>', '<C-c>']
"endif


" The Silver Searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces



" git
autocmd Filetype gitcommit setlocal spell textwidth=72

" prompt to open file in same directory
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>s :split <C-R>=expand("%:p:h") . "/" <CR>
map <leader>v :vsplit <C-R>=expand("%:p:h") . "/" <CR>
