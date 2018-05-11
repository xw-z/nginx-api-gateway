FROM nginx:1.13

# Install wget and install/updates certificates
RUN apt-get update \
 && apt-get install -y -q --no-install-recommends \
    ca-certificates \
    wget \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*

RUN echo "daemon off;" >> /etc/nginx/nginx.conf \
 && sed -i 's/worker_processes  1/worker_processes  auto/' /etc/nginx/nginx.conf

COPY network_internal.conf /etc/nginx/

COPY . /app/
WORKDIR /app/

RUN chmod u+x  /app/bin/docker-gen
RUN chmod u+x  /app/bin/forego

VOLUME ["/etc/nginx/certs", "/etc/nginx/dhparam"]

CMD ["/app/bin/forego", "start", "-r"]