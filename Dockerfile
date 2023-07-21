FROM golang:1.21-rc-alpine3.18 AS build

COPY main.go  /usr/local/go/bin/
WORKDIR /usr/local/go/bin/
RUN go build main.go


FROM alpine:3
WORKDIR /app
COPY --from=build /usr/local/go/bin/main .
CMD [ "./main" ]
