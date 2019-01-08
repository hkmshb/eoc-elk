set -e

source .env

## drop existing es data
rm -rf ./es-data

## drop & recreate database
psql -h localhost -U ${PSQL_USR} -c "DROP DATABASE eoc_data;" -c "CREATE DATABASE eoc_data;";


## start docker setup
docker-compose build
docker-compose up
