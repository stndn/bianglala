# Basic server set up

This project assumes the followings:
* Operating system: [Debian 12.11][url-debian-1211] or [Ubuntu 24.04 server][url-ubuntu-server-2404] with projects' dependencies installed.
* [Docker][url-docker-installation] installed.
* Docker network `lalanet` created within `10.42.73.0/24` subnet.
* Docker containers running with non-root account.


To create the Docker network:
```
docker network create -d bridge --subnet 10.42.73.0/24 --gateway 10.42.73.1 lalanet
```

If you use a different name and/or subnet for your Docker network, ensure that the network-related settings in each component's `compose.yaml` file are adjusted to match the network that you created.


## Extras

If you prefer to work on files directly within the server, I recommend my [custom vim configuration][url-github-kkjjhlhlba].


Apart from that, packages required by this project should be installed on as-needed basis and to suit your own requirements.


<!-- Links -->
[url-debian-1211]: https://www.debian.org/News/2025/20250517
[url-ubuntu-server-2404]: https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-notes/39890
[url-docker-installation]: https://docs.docker.com/engine/install/ubuntu/
[url-github-kkjjhlhlba]: https://github.com/stndn/kkjjhlhlba
