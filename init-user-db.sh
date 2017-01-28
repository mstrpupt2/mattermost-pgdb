#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER test WITH PASSWORD 'test';
    CREATE DATABASE mattermost;
    GRANT ALL PRIVILEGES ON DATABASE mattermost TO docker;
EOSQL
