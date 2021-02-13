# build binary
FROM golang:alpine AS builder
WORKDIR /
ADD src/ .
RUN go build -o app

# copy binary to alpine
FROM alpine
ADD src/ /app/
WORKDIR /app

# copy dependent files
COPY --from=builder /go/pkg/mod/github.com/maxisme/ /go/pkg/mod/github.com/maxisme/
COPY --from=builder /app /app/app

CMD ["./app"]