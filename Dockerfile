FROM golang:1.10

WORKDIR /go/src/docps
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...
RUN apt-get update
RUN curl -sSL https://get.docker.com/ | sh

EXPOSE 8080
CMD ["docps"]