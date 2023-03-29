FROM golang:1.13-alpine3.11 as builder
RUN mkdir /build
COPY *.go /build/
WORKDIR /build

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o api main.go

FROM alpine:3.11.3
COPY --from=builder /build/api .

# executable
EXPOSE 8080
ENTRYPOINT [ "./api" ]