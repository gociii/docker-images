FROM gociii/deb11.base

RUN apt update; \
    apt install -y --no-install-recommends --no-install-suggests \
    curl gnupg2 wget software-properties-common systemctl; \
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | apt-key add -; \
    add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/20.04/mssql-server-2019.list)"; \
    apt update; apt full-upgrade -y; \
    apt install -y mssql-server; \
    apt autoremove; apt clean;
	
COPY entrypoint.sh /opt/mssql/entrypoint.sh

RUN chmod +x /opt/mssql/entrypoint.sh

ENTRYPOINT ["/opt/mssql/entrypoint.sh"]
