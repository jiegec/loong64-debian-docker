# loong64-debian-docker

Run loong64 debian in docker. You can use existing Docker image:

```shell
docker pull jiegec/loong64-debian
docker run -it --rm jiegec/loong64-debian /bin/bash
```

Or build one by yourself:

```shell
git clone https://github.com/jiegec/loong64-debian-docker
./build.sh
```
