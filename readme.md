First, make sure Docker is listening on a localhost via tcp.
By default—for security reasons—docker will only listen on a local socket.
Change the DOCKER_OPTS in /etc/default/docker to:

DOCKER_OPTS="-H tcp://127.0.0.1:4243 -H unix:///var/run/docker.sock"

