export PERSONAL_CODE_DIRECTORY=~/Documents/personal/code
export WORK_CODE_DIRECTORY=~/Documents/work/salsify/code
source ~/.bashrc
source ~/.bash_alias

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# for syntastic pylint
export LC_CTYPE=en_US.UTF-8

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Yarn
export PATH="$PATH:`yarn global bin`"
