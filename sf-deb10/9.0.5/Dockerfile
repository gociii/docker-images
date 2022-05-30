FROM golang:buster

#FROM gociii/deb10.base

ENV S3_URL=ReplacewithYourS3url
ENV AWS_ACCESS_KEY_ID=ReplaceWithYourKey
ENV AWS_SECRET_ACCESS_KEY=ReplaceWithYourKey

RUN apt update; \
    apt install -y --no-install-recommends --no-install-suggests \
    awscli systemctl \
    git ; \
    cd /usr/bin; \
    wget https://github.com/kahing/goofys/releases/latest/download/goofys; \
    chmod +x /usr/bin/goofys; \
    wget 
    apt update; apt full-upgrade -y; \    
    apt autoremove; apt clean;

CMD mkdir ~/.aws/credentials -p; echo -e "[default]\naws_access_key_id = $AWS_ACCESS_KEY_ID\naws_secret_access_key = $AWS_SECRET_ACCESS_KEY" > ~/.aws/credentials

COPY entrypoint.sh /opt/mssql/entrypoint.sh

RUN chmod +x /opt/mssql/entrypoint.sh

ENTRYPOINT ["/opt/mssql/entrypoint.sh"]
