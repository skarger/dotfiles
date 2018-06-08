# dotfiles

Vim 8

Compilation

Make not of ruby version passed to --with-ruby-command. I installed Ruby with Homebrew.


```
cd vim
./configure --prefix=/usr/local \
            --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --with-ruby-command=/usr/local/bin/ruby \
            --enable-pythoninterp \
            --enable-python3interp
make
make install
```

Install Pathogen

Plugins
Cmd-T
vim-surround
vim-abolish
vim-fugitive
vim-polyglot
