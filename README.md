# Bianglala

A data platform + data engineering project using open source tools.


### Requirements

* Operating system: [Ubuntu 24.04 server][url-ubuntu-server-2404].
* [Docker][url-docker-installation] installed and running with non-root account.


### Preparations

* Ensure the Docker network `lalanet` with subnet `10.42.73.0/24` exists. If using different network name and/or subnet, adjust the network in each component's `compose.yaml` file accordingly.


<!-- Links -->
[url-ubuntu-server-2404]: https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-notes/39890
[url-docker-installation]: https://docs.docker.com/engine/install/ubuntu/
