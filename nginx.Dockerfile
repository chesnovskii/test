FROM debian:bullseye

# renovate: datasource=repology depName=debian_unstable/nginx versioning=loose
ENV NGINX_VERSION="1.20.2-1~bullseye"

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl gnupg2 ca-certificates lsb-release debian-archive-keyring

RUN curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor \
    | tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null \
    && echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] \
    http://nginx.org/packages/debian `lsb_release -cs` nginx" \
    | tee /etc/apt/sources.list.d/nginx.list
    
RUN apt-get update && apt-get install -y --no-install-recommends \
    nginx=${NGINX_VERSION}* \
    && rm -rf /var/lib/apt/lists/*
