# Docker

[:arrow_forward: Docker for Web Developers on Pluralsight](https://app.pluralsight.com/library/courses/docker-web-development/table-of-contents)

[Docker hub](https://hub.docker.com)
___
Docker is a lightweight, open, secure platform. Simplify building, shipping, running apps in various environments (staging, test, dev, prod). It provides shipping container system for code. 

__Image__ is a read-only template composed of layered filesystems used to share common files and create Docker container instances.

__Container__ is an isolated and secured shipping container created from an image that can be run, started, stopped, moved, and deleted.


Virtual Machine runs on top of the host operating system  and hypervisor - copy of OS for every VM, images are huge.  Containers run on top of the host operating system, but docker engine integrate them into parent OS. Having tiny image, containers start very fast.

## Benefits
- Docker might help with versioning 
- "work on my machine" issue
- fast shipping
- works the same on every environment

## Docker Toolbox
- Docker Client
- Docker Machine
- Docker Compose - containers orchestration
- Docker Kitematic (GUI)

# Docker Client
- Interact with Docker Engine
- Build and Manage Images
- Run and Manage Containers

## Login
`docker login` To login with CLI you need to use your ID and not email, to find an id login to [Docker Hub](https://hub.docker.com) and check your id in top right corner.

## Commands
_docker pull [image name]_ - pulls ready to use image from docker hub repository (i.e. sql server. node js)

_docker run [image name]_ - runs image

_docker images_ - list of download images

_docker ps_ - list of running containers (-a all containers)


### Example 

`docker pull hello-world` - downloads hello-world image

`docker images` there going to be hello-world

`docker run hello-world` executes

`docker ps -a` see list of containers, need -a because this container not running at the moment

`docker rm [57b - first characters of an CONTAINER ID]` removes conatiner

`docker rmi [fce - first characters of id]` delete image from disk

## Hooking Source Code into a Container

__Volumes__ - special type of directory in a container typially referred to as a "data volume". Can be shared and used among multiple containers. It persistent, even if container has been deleted.

`docker run -p 8080:3000 -v /var/www node` - 8080 is external port, 3000 - internal

`docker inspect` - returns low level details on Docker object

## Generate some code
`npm install` in this folder

`.\node_modules\.bin\express ExpressSite --hbs`

`cd ExpressSite`

`npm install`

`SET DEBUG=expresssite:* & npm start` - runs locally, available on http://localhost:3000/

`docker run -p 8080:3000 -v ${pwd}:/var/www -w "/var/www" node npm start` - pwd - current working directory
-w - working directory, setting context

## Format command

`docker inspect  -f "{{json .Mounts}}" sql1`