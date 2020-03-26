docker stop $(docker container ls -a -q)
docker rm $(docker container ls -a -q)
