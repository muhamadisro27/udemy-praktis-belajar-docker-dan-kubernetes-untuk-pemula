FROM golang:latest AS builder
WORKDIR /app
COPY . .
ENV CGO_ENABLED=0
RUN go mod tidy
RUN go build -o binary

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/binary .
ENTRYPOINT ["/app/binary"]
