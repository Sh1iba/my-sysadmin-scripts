FROM ubuntu:22.04
COPY script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh
CMD ["/usr/local/bin/script.sh"]
