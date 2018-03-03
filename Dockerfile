FROM alpine

# Get packages needed to download and build gforth.
RUN apk add --no-cache --virtual .build-deps alpine-sdk

# Download and unpack the gforth source.
RUN git clone https://github.com/philburk/pforth.git

# Build
WORKDIR /pforth/build/unix

RUN CC=gcc make
RUN cp pforth_standalone pforth /usr/local/bin
RUN cp pforth.dic /usr/local/share

WORKDIR /

# Remove the build directory and sources.
RUN rm -rf pforth

# Remove the packages we needed.
RUN apk del .build-deps \
  && rm -rf /var/cache/apk/*

CMD ["pforth_standalone"]
#CMD ["pforth", "-d", "/usr/local/share/pforth.dic"]
