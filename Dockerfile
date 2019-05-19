### MYHOUSE ###

### define base image
## the SDK version to bind to has to be passed by the builder so to select the right base image
ARG MYHOUSE_SDK_VERSION
ARG ARCHITECTURE
FROM myhouseproject/myhouse-sdk-python:${ARCHITECTURE}-${MYHOUSE_SDK_VERSION}

### install your module's dependencies
RUN pip install slackclient

### copy files into the image
COPY . $WORKDIR

### define the modules provided which needs to be started
ENV MYHOUSE_MODULES="interaction/slack"
