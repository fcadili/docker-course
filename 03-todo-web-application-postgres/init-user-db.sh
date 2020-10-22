#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER in28mins WITH PASSWORD 'in28mins';
    CREATE DATABASE "in28mins-01";
    GRANT ALL PRIVILEGES ON DATABASE "in28mins-01" TO in28mins;
EOSQL