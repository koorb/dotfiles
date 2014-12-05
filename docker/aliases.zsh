# http://blog.stefanxo.com/2014/02/clean-up-after-docker/

alias dockercleancontainers="docker ps -a --no-trunc | grep 'Exit' | awk '{print $1}' | xargs docker rm"
alias dockercleanimages="docker images -f dangling=true -q | xargs docker rmi"
alias dockerclean="dockercleancontainers && dockercleanimages"
