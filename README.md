# k8s-go-app

[![Publish Docker image](https://github.com/mattn/k8s-go-app/actions/workflows/build.yaml/badge.svg)](https://github.com/mattn/k8s-go-app/actions/workflows/build.yaml)

Small skeleton app running on k8s

## Usage

*NOTE*
Please replace `${repositry}` in below and `k8s/*.yml` to point your private/public repositry.

```sh
export repositry=docker.io/ # Modify
docker buildx build -t k8s-go-app:latest .
docker tag k8s-go-app:latest ${repositry}k8s-go-app:latest
docker push ${repositry}k8s-go-app:latest
kubectl apply -f k8s/deploy.yml
kubectl apply -f k8s/service.yml
```

## Requirements

* Docker
* [Docker Buildx](https://docs.docker.com/buildx/working-with-buildx/) //no need to install if using Docker Desktop
* kubectl

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
