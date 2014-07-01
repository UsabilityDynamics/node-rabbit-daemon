Remove temporary built images
docker images -notrunc| grep none | awk '{print $3}' | xargs -r docker rmi

Remove Docker containers with Exit status
docker ps -a -notrunc | grep 'Exit' | awk '{print $1}' | xargs -r docker rm

alias dockercleancontainers="docker ps -a -notrunc| grep 'Exit' | awk '{print \$1}' | xargs -L 1 -r docker rm"
alias dockercleanimages="docker images -a -notrunc | grep none | awk '{print \$3}' | xargs -L 1 -r docker rmi"
alias dockerclean="dockercleancontainers && dockercleanimages"

@source http://blog.stefanxo.com/2014/02/clean-up-after-docker/