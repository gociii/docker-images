FROM debian:bullseye-slim

RUN apt update; \
    apt full-upgrade -y; \
    apt install -y htop nano dnsutils net-tools; \
    apt autoremove; \
    apt clean;

CMD ["/bin/bash"]
