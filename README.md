# k8s-go-app

Small skeleton app running on k8s

## Usage

*NOTE*
Please replace `${repositry}` in below and `k8s/*.yml` to point your private/public repositry.
```
docker build -t ${repositry}/k8s-go-app:latest .
docker tag k8s-go-app:latest ${repositry}/k8s-go-app:latest
docker push ${repositry}/k8s-go-app:latest
kubectl apply -f k8s/deploy.yml
kubectl apply -f k8s/service.yml
```

## Requirements

* Docker
* kubectl

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
