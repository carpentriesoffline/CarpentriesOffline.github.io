DOCKERPORT=4000
HOSTPORT=4000
VERSION=0.0.1
CONTAINER=jannetta/jekyll
NAME=jekyll
DOCKERFILE=Dockerfile
VOLUME=jekyll
DOCKERMOUNTPOINT=/srv/jekyll
PROJECT=${PWD}
JEKYLL_VERSION=3.8

# CarpentriesRegistration
serve:
	docker run --rm --name ${NAME} --volume="${PROJECT}:${DOCKERMOUNTPOINT}" --publish ${HOSTPORT}:${DOCKERPORT} jekyll/jekyll:3.8 jekyll serve

stop:
	docker stop ${NAME}
