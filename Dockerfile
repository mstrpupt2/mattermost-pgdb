FROM postgres:9.6.1-apline

ENV POSTGRES_PASSWORD test
ENV POSTGRES_USER test

COPY init-user-db.sh /docker-entrypoint-initdb.d/

RUN chmod 755 /docker-entrypoint-initdb.d/init-user-db.sh
