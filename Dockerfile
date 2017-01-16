FROM alpine:latest
MAINTAINER thimico

RUN apk update && apk add libreoffice

EXPOSE 8100

# replace default setup with a one disabling logos by default
ADD sofficerc /etc/sofficerc
ADD iniciar.sh /usr/bin/iniciar.sh

VOLUME ["/tmp"]

RUN chmod +x /usr/bin/iniciar.sh

ENTRYPOINT ["/usr/bin/iniciar.sh"]