FROM golang:alpine
RUN mkdir/app
COPY . /app
WORKDIR /app
RUN go build -o golang.go . 
CMD ["/app/golang.go"]
