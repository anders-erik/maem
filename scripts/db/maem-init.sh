#!/usr/bin/env bash


init_dev()
{
    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'devpswd';"
}


create_maem()
{
    # sudo -i -u postgres

    DB_NAME="maem"
    DB_USER="postgres"
    DB_HOST="localhost"
    DB_PORT="5432"

    createdb -U "$DB_USER" -h "$DB_HOST" -p "$DB_PORT" "$DB_NAME"
}



init_dev
create_maem
