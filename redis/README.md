# Redis

Docker image: [Redis 7.2.9-alpine3.21][url-redis-dockerhub].


### Preparations

1. Customize [compose.yaml][repo-compose-yaml] as necessary.
1. For all other preparations, refer to the main [README][repo-root-readme].


### Startup

Once done, start the container (with -d flag to make it run as daemon)
```
docker compose up -d
```


<!-- Links -->


[url-redis-dockerhub]: https://hub.docker.com/_/redis/tags?name=7.2.9-alpine3.21
[repo-compose-yaml]: compose.yaml
[repo-root-readme]: /README.md
