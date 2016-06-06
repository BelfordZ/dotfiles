echo "Docker Setup..."

docker-machine start default
eval $(docker-machine env default)

# Kill all running containers.
alias docker-rm='docker kill $(docker ps -aq) && docker rm -f $(docker ps -aq)'
# Delete all untagged images.
alias docker-rmi='docker rmi -f $(docker images -aqf dangling=true)'

# Delete all stopped containers and untagged images.
alias docker-nuke='docker-rm && docker-rmi'

echo "Docker Setup Done!"
