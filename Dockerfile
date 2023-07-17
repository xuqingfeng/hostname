FROM golang:1.20 as builder

WORKDIR /src

COPY . .

RUN go build -o hostname main.go

FROM busybox:stable

WORKDIR /app

COPY --from=builder /src/hostname /app/hostname

EXPOSE 8000

CMD ["./hostname"]
