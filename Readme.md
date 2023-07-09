# Nginx - Docker image with config copy.

```shell
docker build -t my-nginx-app .
```

Standard run.

```shell
docker run -p 8080:80 -e CONFIG_FILE=index.html my-nginx-app
```

Switch out the file

```shell
docker run -p 8080:80 -e CONFIG_FILE=index-blue.html my-nginx-app
```