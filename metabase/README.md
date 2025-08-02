# Metabase

Docker image: [metabase/metabase:v0.55.10.4][url-metabase-dockerhub].


### Preparations

1. Customize [`compose.yaml`][repo-compose-yaml] as necessary.
1. Create a user and corresponding database in your [PostgreSQL][repo-postgresql] instance. For this purpose, we use the user `metabase` with the database `metabase`.
    ```
    CREATE USER metabase WITH PASSWORD 'y0ur-DB-p4$$w0rd-h3r3';
    CREATE DATABASE metabase OWNER metabase;
    ```
1. Copy [`.env.sample`][repo-dot-env-sample] to `.env`, and update the configuration values accordingly.
1. For all other preparations, refer to the main [README][repo-root-readme].


### Startup

Once done, start the container (with -d flag to make it run as daemon)
```
docker compose up -d
```


<!-- Links -->
[url-metabase-dockerhub]: https://hub.docker.com/r/metabase/metabase/tags?name=v0.55.10.4
[repo-compose-yaml]: compose.yaml
[repo-dot-env-sample]: .env.sample
[repo-postgresql]: /postgresql
[repo-root-readme]: /README.md
