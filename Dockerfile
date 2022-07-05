FROM golang:alpine AS builder
WORKDIR /home
COPY . .
RUN go build -o /app hello.go

FROM scratch
COPY --from=builder /app .
CMD ["/app"]