FROM golang:1.13-alpine

RUN mkdir -p $GOPATH/src/go.txtdirect.org/godocit

WORKDIR $GOPATH/src/go.txtdirect.org/godocit

COPY . .

RUN GO111MODULE=on go install

ENTRYPOINT ["../../../bin/godocit"]

