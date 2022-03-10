FROM golang:1.17-alpine AS build-dev
WORKDIR /go/src/app
COPY . ./
RUN go install
FROM scratch
COPY --from=build-dev . .
CMD ["k8s-go-app"]
