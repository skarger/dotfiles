export PERSONAL_CODE_DIRECTORY=~/Code/personal
export WORK_CODE_DIRECTORY=~/Code/work/salsify
export EDITOR=vim
source ~/.bashrc
source ~/.bash_alias

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# colorize file types in terminal
export CLICOLOR=true
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# for syntastic pylint
export LC_CTYPE=en_US.UTF-8

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Yarn
export PATH="$PATH:`yarn global bin`"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Needed to make awscli available pip3 install awscli --upgrade --user
PATH="$HOME/Library/Python/3.7/bin:${PATH}"
export PATH

# http://virtualenvwrapper.readthedocs.org/en/latest/index.html
#export WORKON_HOME=~/envs
#source /usr/local/bin/virtualenvwrapper.sh

export DB_USER=$USER

export PATH="$HOME/.cargo/bin:$PATH"

# java
export PATH="/usr/local/java/jdk-11.0.1.jdk/Contents/Home/bin:$PATH"
