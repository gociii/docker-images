FROM debian:bullseye-slim

#COPY

RUN apt update; \
    apt install --no-install-recommends --no-install-suggests -y \
    curl wget curl htop nano net-tools dnsutils software-properties-common; \
    apt autoremove; apt clean; rm -rf /var/lib/apt/lists/*;

CMD ["/bin/bash"]
