source ~/.git-prompt.sh
source ~/.git-completion.bash

export PS1='[\u@\h \[\e[0;31m\]\W\[\e[0m\]\[\e[0;36m\]$(__git_ps1 " (%s)")\[\e[0m\]]\$ '

function gbd {
  git branch -D $1
}


function fnj() {
  echo "find . \( -path ./node_modules -o -path ./tmp \) -prune -o -name \"$1\" -print"
  find . \( -path ./node_modules -o -path ./tmp \) -prune -o -name "$1" -print
}

function dsh () { docker exec -it $1 /bin/bash; }

# stuart's magic incantation
#find <dir> -type f -name <filename> -exec sed i '' s/old/new/g {} +

eval "$(direnv hook bash)"

export NVM_DIR="/Users/skarger/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

function devcred () {
  echo "Org    s-76c4a90c-c136-4ae9-b552-7ff253e7bc07"
  echo "API    50aa788ab89ec619e5b9fdc3496d540f62661483f4eab6f069b9e54877709861"
  echo "User   s-01d7b283-abaf-4b35-968f-4b7fb99453fe"
  echo "Admins s-56f25c81-554b-4052-ab71-af6e0c072b74"
}

function dockerkafka () {
  docker run --restart unless-stopped --detach --name zookeeper confluent/zookeeper:3.4.6-cp1
  docker run --restart unless-stopped --detach --name kafka --link zookeeper:zookeeper --publish 9092:9092 --env KAFKA_ADVERTISED_HOST_NAME=docker.local.host ches/kafka:0.9.0.1
}

# kubernetes
function sk8sr () {
  app=$1
  shift
  environment=$1
  shift
  command=$*
  echo "salsifyk8s run cmd -a $app -e $environment $command"
  salsifyk8s run cmd -a $app -e $environment $command
}

function cfr () {
  environment=$1
  shift
  command=$*
  sk8sr content-flow-service $environment $command
}

function rcp () {
  cfr prod rails console
}

function rcs () {
  cfr staging rails console
}

function pods () {
  environment=$1
  echo "salsifyk8s pod-types -a content-flow-service -e $environment"
  salsifyk8s pod-types -a content-flow-service -e $environment
}

function scale () {
  environment=$1
  ctype=$2
  count=$3
  echo "salsifyk8s pod-types -a content-flow-service -e $environment -t $ctype -c $count"
  salsifyk8s pod-types -a content-flow-service -e $environment -t $ctype -c $count
}
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
