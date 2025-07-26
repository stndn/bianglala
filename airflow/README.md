# Airflow

Docker image: [apache/airflow:slim-3.0.3-python3.12][url-apache-airflow-dockerhub].


### Preparations

1. Customize [`compose.yaml`][repo-compose-yaml] as necessary.
1. Create a user and corresponding database in your [PostgreSQL][repo-postgresql] instance. For this purpose, we use the user `airflow` with the database `airflow`.
    ```
    CREATE USER airflow WITH PASSWORD 'y0ur-p4$$w0rd-h3r3';
    CREATE DATABASE airflow OWNER airflow;
    ```
1. Copy [`.env.sample`][repo-dot-env-sample] to `.env`, and update the configuration values accordingly.


### Startup

Once done, start the container (with -d flag to make it run as daemon)
```
docker compose up -d
```


### Miscellaneous

The [`compose.yaml`][repo-compose-yaml] is adapted from [Apache Airflow docker-compose.yaml][url-apache-airflow-docker-compose-yaml], with `postgresql` and `redis` excluded since they are installed separately.


<!-- Links -->
[url-apache-airflow-dockerhub]: https://hub.docker.com/r/apache/airflow/tags?name=slim-3.0.3-python3.12
[url-apache-airflow-docker-compose-yaml]: https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html#fetching-docker-compose-yaml
[repo-compose-yaml]: compose.yaml
[repo-dot-env-sample]: .env.sample
[repo-postgresql]: /postgresql
[repo-root-readme]: /README.md
