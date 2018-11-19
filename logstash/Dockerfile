# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:6.2.3

USER root

RUN mkdir -p /usr/share/logstash/vendor/jar/jdbc/

RUN curl -L -o /usr/share/logstash/vendor/jar/jdbc/postgresql-9.4-1201.jdbc41.jar http://jdbc.postgresql.org/download/postgresql-9.4-1201.jdbc41.jar

# gettext
RUN yum -y install gettext

# Supervisord
RUN yum -y install epel-release
RUN yum install -y supervisor

USER logstash

# install logstash plugin
RUN logstash-plugin install logstash-output-jdbc

RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/
ADD mapping/ /usr/share/logstash/mapping/
ADD sql/ /usr/share/logstash/sql/


RUN mkdir /usr/share/logstash/files/

USER root

# Install psql
RUN yum install https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-3.noarch.rpm -y
RUN yum install postgresql95 postgresql95-libs -y

# S3 secrets
RUN yum -y install python-pip
RUN pip install awscli

# entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

