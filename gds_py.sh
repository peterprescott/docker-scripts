echo 'This container puts you in bash.'
echo '`chown 1000 shared` will give you permission to write into `shared`.'
echo 'Then `jupyter lab --allow-root` puts you in Jupyter.'

docker container run --name nb -it -p 8888:8888 --user root -e GRANT_SUDO=yes -v $PWD/shared:/home/jovyan/shared/ darribas/gds_py:4.0 bash

