source ~/.bashrc
source ~/.bash_alias

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export CODE_DIRECTORY=/Users/skarger/code

#PATH=/Users/skarger/code/ansible/bin:/Users/skarger/envs/user_metrics/bin:/Users/skarger/.rbenv/shims:/Users/skarger/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
#PYTHONPATH=/Users/skarger/code/ansible/lib:
#MANPATH=/Users/skarger/code/ansible/docs/man:
#export ANSIBLE_INVENTORY=~/ansible_hosts

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# for syntastic pylint
export LC_CTYPE=en_US.UTF-8


export PATH="${HOME}/kubernetes/platforms/darwin/amd64:${PATH}"

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Yarn
export PATH="$PATH:`yarn global bin`"
