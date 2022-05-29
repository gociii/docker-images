#FROM debian:buster-slim

FROM gociii/deb11.base

RUN apt update; \
    apt install -y --no-install-recommends --no-install-suggests \
#    curl gnupg2 wget software-properties-common systemctl; \     
    apt update; apt full-upgrade -y; \
    apt install -y --no-install-recommends --no-install-suggests \
    git golang-go
    apt autoremove; apt clean;
	
COPY entrypoint.sh /opt/mssql/entrypoint.sh

RUN chmod +x /opt/mssql/entrypoint.sh

ENTRYPOINT ["/opt/mssql/entrypoint.sh"]
