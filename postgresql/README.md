# PostgreSQL

Docker image: [PostgreSQL 17.5-alpine3.22][url-postgresql-dockerhub].


### Preparations

1. Customize [compose.yaml][repo-compose-yaml] as necessary.
1. Copy `.env.sample` to `.env`, and update the values for `POSTGRES_USER`, `POSTGRES_PASSWORD`, and `POSTGRES_DB`. Leave the `POSTGRES_HOST` as-is, as it refers to the service name in [compose.yaml][repo-psql-compose].
1. For all other preparations, refer to the main [README][repo-root-readme].


Optional steps:

1. Specify additional database user/s and corresponding database/s to be created during DB initialization in [volumes/init/02-init-db-users.sql][repo-psql-init-script-02].


### Startup

Once done, start the container (with -d flag to make it run as daemon)
```
docker compose up -d
```


<!-- Links -->
[url-postgresql-dockerhub]: https://hub.docker.com/_/postgres/tags?name=17.5-alpine3.22
[repo-compose-yaml]: compose.yaml
[repo-root-readme]: /README.md
[repo-psql-init-script-02]: /postgresql/volumes/init/02-init-db-users.sql
