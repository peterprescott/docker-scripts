# Docker Scripts

This repo is a collection of scripts to run Docker containers for different processes I might find useful.

Not necessarily all functional yet...

And here are some bits I have found helpful in learning about Docker:

## --[Video @JakeWright: Learn Docker in 12 Minutes](https://www.youtube.com/watch?v=YFl2mCHdv24)

He covers:
1. [What is Docker](https://en.wikipedia.org/wiki/Docker_(software))
2. [Virtual Machines](https://en.wikipedia.org/wiki/Virtual_machine) vs. Docker
3. Introduction to [Dockerfiles](https://docs.docker.com/engine/reference/builder/), images and containers
4. [The Docker Hub](https://hub.docker.com/)
5. Writing a Dockerfile
6. Building an image
7. [Running a container](https://docs.docker.com/engine/reference/run/)
8. [Mounting volumes](https://docs.docker.com/storage/volumes/)
9. One process per container

In a new folder (`example`), create a subfolder (`src`) and inside that a file `index.php`:
```
<?php

echo "hello world";
```

Then in the `example` folder create your Dockerfile:
```
# Dockerfile
FROM php:7.0-apache
COPY /src/ /var/www/html/
EXPOSE 80
```
Build it: 

`docker build -t jake-example .`

Then run it:

`docker run -p 80:80 jake-example`

Now run it with your `src` folder mounted as a volume:

`docker run -p 80:80 -v ~/docker/src:/var/www/html/ jake-example`

and you can edit the php folder and see the changes live.

## --[Docs: Dockerfile reference](https://docs.docker.com/engine/reference/builder/)

## --[Docs: Volumes](https://docs.docker.com/storage/volumes/)

## --[Video: Docker Compose in 12 Minutes](https://www.youtube.com/watch?v=Qw9zlE3t8Ko)

## --[@JakeWright's Source Code](hhttps://github.com/jakewright/tutorials/tree/master/docker)


## --[Jupyter Notebooks Docker Images](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#image-relationships)

![Dependencies of Jupyter Notebook Images](https://jupyter-docker-stacks.readthedocs.io/en/latest/_images/inherit.svg)

## --[Geographic Data Science Notebook Stack](https://github.com/darribas/gds_env)

So Dani's Docker image for a GDS stack makes most sense when understood precisely as a geospatial variant on the Jupyter Notebook Docker images, with [`darribas/gds_py:4.0`](https://github.com/darribas/gds_env/blob/master/gds_py/Dockerfile) inheriting from `jupyter/minimal-notebook`, and `darribas/gds` then inheriting from his `gds_py` and adding R and the tidyverse.

Just like Jupyter's `r-notebook` and `scipy-notebook` inherit from `minimal-notebook`, and then [`datascience-notebook`](https://github.com/jupyter/docker-stacks/blob/master/datascience-notebook/Dockerfile) inherits from `scipy-notebook` and adds R and Julia.

## --[@BretFisher](https://twitter.com/BretFisher)'s [Docker Mastery Udemy Course ~ 20 Hrs](https://www.udemy.com/course/docker-mastery/)

## --[Running GUI applications in a contaner](https://vnhomesoft.com/blog/2018/09/13/docker-setup-an-rails-development-environment/)

```
docker run -it --net=host -e DISPLAY=$DISPLAY -e \
XAUTHORITY=$XAUTHORITY -v $XAUTHORITY:$XAUTHORITY  \
--name <container_name> <image_name>
```

## --[The best Docker base image for your Python application](https://pythonspeed.com/articles/base-image-python-docker-images/)

> Ubuntu LTS, CentOS, Debian

[Using Alpine can make Python Docker builds 50× slower](https://pythonspeed.com/articles/alpine-docker-python/)

## --[Pragmatism is important](https://blog.realkinetic.com/building-minimal-docker-containers-for-python-applications-37d0272c52f3)

> Pragmatism is important — letting someone else shoulder the maintenance of the base image allows you to focus on the business problem.

