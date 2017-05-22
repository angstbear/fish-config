function dockercleanup
    docker rm -v (docker ps -a -q -f status=exited)
    docker rmi (docker images -q -f dangling=true)
end
