source ~/.git-prompt.sh
source ~/git-completion.bash
#export PS1='[\u@\h \W\[\e[0;36m\]$(__git_ps1 " (%s)")\[\e[0m\]]\$ '
export PS1='[\u@\h \[\e[0;31m\]\W\[\e[0m\]\[\e[0;36m\]$(__git_ps1 " (%s)")\[\e[0m\]]\$ '

function gbd {
  git branch -D $1
}

# http://virtualenvwrapper.readthedocs.org/en/latest/index.html
export WORKON_HOME=~/envs
source /usr/local/bin/virtualenvwrapper.sh

function dsh () { docker exec -it $1 /bin/bash; }

# stuart's magic incantation
#find <dir> -type f -name <filename> -exec sed i '' s/old/new/g {} +
