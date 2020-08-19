FROM postgres:9.5
MAINTAINER Ronald Magcalas <naid.rm@gmail.com>
ENV REFRESHED_AT 2020-08-10

# based on mattrayner/docker-lamp
# MAINTAINER Matthew Rayner <hello@rayner.io>
# based on dgraziotin/lamp
# MAINTAINER Daniel Graziotin <daniel@ineed.coffee>

ENV DOCKER_USER_ID 501
ENV DOCKER_USER_GID 20

ENV BOOT2DOCKER_ID 1000
ENV BOOT2DOCKER_GID 50

RUN groupmod -g $(($BOOT2DOCKER_GID + 10000)) $(getent group $BOOT2DOCKER_GID | cut -d: -f1)
RUN groupmod -g ${BOOT2DOCKER_GID} staff



# Configure /app folder with sample app
RUN mkdir -p /app && rm -fr /var/www/html && ln -s /app /var/www/html
ADD app/ /app

#Environment variables to configure postgres

#Password for all roles
ENV GLOBAL_PGSQL_PWD root

CMD ["/run.sh"]
