FROM golang:1.20
ENV PORT 80
EXPOSE 80

WORKDIR /
COPY . .

RUN go mod vendor
RUN go build -v -o app
RUN mv ./app /go/bin/

CMD ["app"]
