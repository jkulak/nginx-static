# Dockerized nginx static file server


Build the image
```
docker build -t image_tag_name .
```

Run the container

```
docker run -p 20333:20333 --name nginx-static-1 image_tag_name
```

Reload mounted configuration

```
docker exec container_name nginx -s reload
```
