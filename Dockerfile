FROM golang:alpine

RUN go get github.com/bibasoft-team/drone-envsubst/cmd/envsubst

CMD [ "envsubst" ]
