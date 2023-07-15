FROM alpine:latest

RUN apk add go

COPY main.go  /usr/local/go/bin/
WORKDIR /usr/local/go/bin/
CMD [ "go","run","main.go" ] 