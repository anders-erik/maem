#!/usr/bin/env bash



create_table()
{
    DB_NAME="mydb"
    TABLE_NAME="users"
    DB_USER="your_postgres_username"    # Replace with your actual postgres username
    DB_HOST="localhost"
    DB_PORT="5432"

    psql -U "$DB_USER" -h "$DB_HOST" -p "$DB_PORT" -d "$DB_NAME" <<EOF
    CREATE TABLE IF NOT EXISTS $TABLE_NAME (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INT
    );
    EOF

}