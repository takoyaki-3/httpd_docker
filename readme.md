# Simple httpd server

### 1. Build image

```
docker build ./ -t httpd_test
```

### 2. Run image

```
docker run -p 8080:80 -it -d --name httpd_test httpd_test
```
