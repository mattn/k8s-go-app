FROM golang:1.17-alpine
WORKDIR /go/src/app
COPY . ./
RUN go install
COPY . .
CMD ["k8s-go-app"]
