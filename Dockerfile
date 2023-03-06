FROM golang:1.20.1 AS builder

WORKDIR /usr/src/app
COPY hellofc3.go .

RUN go mod init gabrielpoltronieri/hellofc3
RUN go build

CMD [ "./hellofc3" ]