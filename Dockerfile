FROM michilu/fedora-zero
RUN yum install -y \
  nmap-ncat \
  && yum clean all
EXPOSE 80
CMD while :; do nc --listen 80 --keep-open --sh-exec 'echo -e "HTTP/1.0 200 OK\r\n\r\nHELLO WORLD"' ; done
