#!/bin/bash
set -e


# Define help message
show_help() {
    echo """
    commands
    ----------------------------------------------------------------------------
    bash          : run bash
    start         : starts supervisord with logstash and the VPN client
    """
}

setup_aws_requirements() {
    aws s3 cp --sse AES256 s3://ecs-secrets-$ENV/$PROJECT - >> ~/.bashrc
}

setup_database_tables_dev(){
    # handle database credentials
    export PGPASSWORD=${PSQL_PASSWORD}
    export PGHOST=ckan-eocng-dev.cpqsfknb8sgc.eu-west-1.rds.amazonaws.com
    export JDBC_STRING="jdbc:postgresql://ckan-eocng-dev.cpqsfknb8sgc.eu-west-1.rds.amazonaws.com:5432"
    export PGUSER=${PSQL_USER}
    export PGPORT=5432
    # run the sql files in the sql directory
    # assumes path => /usr/share/logstash/sql and psql installed
    FILES_PATH=/usr/share/logstash/sql
    cat $FILES_PATH/*.sql | psql -d ${PSQL_DB}
}

setup_database_tables_prod(){
    # handle database credentials
    export PGPASSWORD=${POSTGRES_PASSWORD}
    export PGHOST=${CKAN_DB_HOST}
    export JDBC_STRING="jdbc:postgresql://${PGHOST}:5432"
    export PGUSER=${POSTGRES_USER}
    export PGPORT=5432
    # run the sql files in the sql directory
    # assumes path => /usr/share/logstassh/sql and psql installed
    FILES_PATH=/usr/share/logstash/sql
    cat $FILES_PATH/table_*.sql | psql -d eoc_data
    cat $FILES_PATH/view_*.sql | psql -d eoc_data
}

case "$1" in
    bash )
        bash
    ;;

    eval )
        eval "${@:2}"
    ;;

    start )
      setup_aws_requirements
      source ~/.bashrc
      setup_database_tables_dev
      /usr/share/logstash/bin/logstash
    ;;

    start-prod )
      setup_database_tables_prod
      /usr/share/logstash/bin/logstash
    ;;
esac
