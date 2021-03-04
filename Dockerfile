FROM golang:alpine

RUN go get github.com/janosmiko/drone-envsubst/cmd/envsubst

CMD [ "envsubst" ]
