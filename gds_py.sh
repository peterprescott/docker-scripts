echo 'This script will put you within the shell of the container.'
echo 'Run `jupyter lab` explicitly to use Jupyter.'

docker container run \
--rm -ti -p 8888:8888 \
-v ${pwd}/work:/home/jovyan/work \
darribas/gds_py:4.0 bash

