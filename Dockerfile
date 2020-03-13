# lightweight container for go
FROM golang:alpine

# update container's packages and install git
RUN apk update && apk add --no-cache git

# define some build arguments
ARG PORT=8080
ARG INSTANCE_ID=

# define env vars for the app
ENV PORT=${PORT}
ENV INSTANCE_ID=${INSTANCE_ID}

# expose the port, so app will be publicily accessible
EXPOSE $PORT

RUN echo $PORT
RUN echo $INSTANCE_ID

# set /app to be the active directory
WORKDIR /app

# copy all files from outside container, into the container
COPY . .

# download dependencies
RUN go mod tidy

# build binary
RUN go build -o binary

# set the entry point of the binary
ENTRYPOINT ["/app/binary"]
