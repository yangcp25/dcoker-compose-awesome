FROM nginx:1.25.3-alpine

RUN apk update && apk upgrade

RUN apk add --no-cache bash curl ipvsadm iproute2 openrc keepalived dos2unix && rm -f /var/cache/apk/* /tmp/*

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["sh", "/entrypoint.sh"]