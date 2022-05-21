#!/bin/bash


# 1. BUILD DOCKERIMAGE USING DOCKERFILE
docker build -t mssql2019db .

# 2. RUN CONTAINER TO SETUP MSSQL
docker container stop initial-dbserver;
docker container rm initial-dbserver -f;
docker run --name initial-dbserver -ti mssql2019db /opt/mssql/bin/mssql-conf setup;

# 3. COMMIT TO SAVE SETUP
docker commit initial-dbserver mssql2019db:ready;

# 4. RUN CONTAINER  (MS-SQL Daemon)
docker container stop initial-dbserver;
docker container rm initial-dbserver -f;

# When creating a new database use /var/mssqldb/ as location in your SQL e.g.:
#  CREATE DATABASE NewDatabaseName
#    ON
#    (
#        NAME = 'NewDatabaseName',
#        FILENAME = '/var/mssqldb/NewDatabaseName.mdf'
#    )
# This will enable the file to be save outside the container to avoid saving data in the container.

docker run -d -h mssqldb --name mssqldb -p 1433:1433 -v /data/shared/mssql-db:/var/mssqldb msssql2019db:ready

# 5. CLEAN & SQUASH IMAGE

pip install docker-squash;

# Check dependant images from base:

