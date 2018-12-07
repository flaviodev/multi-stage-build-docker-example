# multi-stage-build-docker-example

A simple example of multi-stage build docker to take the binary created by the golang:alpine container and package it by itself.

Commands to build image and run a containter:

```
$ docker build -t my-goapp .
$ docker run my-goapp
```

Size of images:

```
golang                                         alpine              57915f96905a        4 weeks ago         310MB
my-goapp                                       latest              c29b49f21a3c        11 minutes ago      6.87MB
```
