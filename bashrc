source ~/.git-prompt.sh
source ~/.git-completion.bash

export PS1='[\u@\h \[\e[0;31m\]\W\[\e[0m\]\[\e[0;36m\]$(__git_ps1 " (%s)")\[\e[0m\]]\$ '

function gbd {
  git branch -D $1
}


function dsh () { docker exec -it $1 /bin/bash; }

# stuart's magic incantation
#find <dir> -type f -name <filename> -exec sed i '' s/old/new/g {} +

eval "$(direnv hook bash)"

export NVM_DIR="/Users/skarger/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

function devcred () {
  echo "Org    s-c89ca57b-d21e-4c82-80f6-bcfdee9bc91f"
  echo "API    8744546b2be3fcdaefe95292fd9996b091260996e44885ab868295de5b7a1014"
  echo "User   s-51d0e71b-87c4-4eb4-a31c-7f49e23e8356"
  echo "Admins s-00dc60f6-47f4-48cf-a880-d5ea0e5ae555"
}

function dockerkafka () {
  docker run --restart unless-stopped --detach --name zookeeper confluent/zookeeper:3.4.6-cp1
  docker run --restart unless-stopped --detach --name kafka --link zookeeper:zookeeper --publish 9092:9092 --env KAFKA_ADVERTISED_HOST_NAME=docker.local.host ches/kafka:0.9.0.1
}
