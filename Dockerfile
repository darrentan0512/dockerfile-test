FROM golang:1.12-alpine
WORKDIR /app
COPY . .
RUN go build -mod=vendor -o bin/hello && \
	cp bin/hello /usr/local/bin/hello
RUN apk --no-cache add ca-certificates
CMD ["hello"]
