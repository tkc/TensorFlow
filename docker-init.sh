# env
export DOCKER_CERT_PATH=~/.docker/machine/machines/default/
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_MACHINE_NAME="default"

# docker-machine
#docker-machine regenerate-certs default
#docker-machine start default
#eval "$(docker-machine env default)"

# docker-compose
docker rm -f $(docker ps -a -q)
docker-compose rm --all
docker-compose up -d

# open web
function ip() {
    docker-machine ip
}

dockerIP=`ip`
open 'http://'$dockerIP':8888'
echo $dockerIP':8888'

# exec image
docker exec -ti tensor1 bash