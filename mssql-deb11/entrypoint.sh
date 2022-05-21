#!/bin/bash

FILE=/opt/mssql/ready

if test -f "$FILE"; then
    echo "$FILE exists. Starting Microsoft SQL Server..."
    /opt/mssql/bin/sqlservr
else
    echo "$FILE not found. Setting up Microsoft SQL Server for first-time use..."
    /opt/mssql/bin/mssql-conf setup
    touch $FILE
fi
