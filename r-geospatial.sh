docker run -d \
--name rstudio \
-v $HOME:/home/rstudio/work \
-e ROOT=TRUE \
-e PASSWORD=pass \
-p 8787:8787 \
rocker/geospatial


google-chrome http:localhost:8787
