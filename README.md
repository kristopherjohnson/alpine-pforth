# alpine-pforth

This builds a [Docker](https://www.docker.com) container image with [pForth](https://github.com/philburk/pforth) based on an [Alpine](https://hub.docker.com/_/alpine/) image

This image is available from the Docker Hub in the repository [oldmankris/alpine-pforth](https://hub.docker.com/r/oldmankris/alpine-pforth/)

To build the image:

    make build

To run the image:

    make run

Note that pForth does not echo terminal input until end-of-line is entered.

