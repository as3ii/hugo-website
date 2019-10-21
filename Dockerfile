FROM golang:latest

# install hugo
RUN go get -u github.com/kardianos/govendor && \
    govendor get github.com/gohugoio/hugo && \
    go install github.com/gohugoio/hugo

# bind directory
VOLUME ["/hugo"]

WORKDIR /hugo

 EXPOSE 1313

 CMD ["hugo"]
