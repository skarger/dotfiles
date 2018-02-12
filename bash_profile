export PERSONAL_CODE_DIRECTORY=~/Documents/personal/code
export WORK_CODE_DIRECTORY=~/Documents/work/salsify/code
source ~/.bashrc
source ~/.bash_alias

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# for syntastic pylint
export LC_CTYPE=en_US.UTF-8

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Yarn
export PATH="$PATH:`yarn global bin`"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# http://virtualenvwrapper.readthedocs.org/en/latest/index.html
#export WORKON_HOME=~/envs
#source /usr/local/bin/virtualenvwrapper.sh

export DB_USER=$USER
