# dotfiles

Vim 8 compilation
```
cd vim
./configure --prefix=/usr/local \
            --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --with-ruby-command=/usr/bin/ruby \
            --enable-pythoninterp \
            --enable-python3interp
make
make install
```

