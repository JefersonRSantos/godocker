### Não consegui fazer a imagem ter apenas 2MEGAS, na vdd passei longe disso, mals"

FROM alpine:latest

RUN apk add go

COPY main.go  /usr/local/go/bin/
WORKDIR /usr/local/go/bin/
CMD [ "go","run","main.go" ] 
