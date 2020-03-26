docker run -d --name rstudio -v C:\Users\peterprescott\gitDrive\docker-scripts\shared:/home/rstudio/shared -e DISABLE_AUTH=true -p 8787:8787 rocker/geospatial:3.6.2

python open_browser.py localhost:8787
