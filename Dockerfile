FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends python3 procps && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www
COPY script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh
CMD ["/bin/bash", "-c", "/usr/local/bin/script.sh & exec python3 -m http.server 8080"]
