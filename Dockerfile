FROM golang:alpine AS build
RUN go get github.com/bibasoft-team/drone-envsubst/cmd/envsubst

FROM alpine:latest
COPY --from=build /go/bin/envsubst /usr/bin
CMD [ "envsubst" ]
