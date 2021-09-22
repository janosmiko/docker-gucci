FROM golang:alpine AS build
RUN go get github.com/noqcks/gucci

FROM alpine:latest
COPY --from=build /go/bin/gucci /usr/bin
CMD [ "gucci" ]
