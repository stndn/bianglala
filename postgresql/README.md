# PostgreSQL

### Requirements

* Operating system: [Ubuntu 24.04 server][url-ubuntu-server-2404].
* [Docker][url-docker-installation] installed and running with non-root account.


### Preparations

Required steps:
1. Ensure the Docker network `lalanet` with subnet `10.42.73.0/24` exists. If using different network name and/or subnet, adjust the network in [compose.yaml][repo-psql-compose] accordingly.
1. Copy `.env.sample` to `.env`, and update the values for `POSTGRES_USER`, `POSTGRES_PASSWORD`, and `POSTGRES_DB`. Leave the `POSTGRES_HOST` as-is, as it refers to the service name in [compose.yaml][repo-psql-compose].

Optional steps:

1. Change the image used in [compose.yaml][repo-psql-compose] according to the available image in [dockerhub](https://hub.docker.com/_/postgres/).
1. Specify additional database user/s and corresponding database/s to be created during DB initialization in [volumes/init/02-init-db-users.sql][repo-psql-init-script-02].


### Startup

Once done, start the container (with -d flag to make it run as daemon)
```
docker compose up -d
```


<!-- Links -->
[url-ubuntu-server-2404]: https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-notes/39890
[url-docker-installation]: https://docs.docker.com/engine/install/ubuntu/
[repo-psql-compose]: /postgresql/compose.yaml
[repo-psql-init-script-02]: /postgresql/volumes/init/02-init-db-users.sql
