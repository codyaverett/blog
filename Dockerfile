FROM alpine:edge
LABEL maintainer="Cody Averett"
LABEL email="codyaverett@gmail.com"

ADD ./nginx-boot.sh /sbin/nginx-boot

RUN chmod +x /sbin/nginx-boot && \
    apk --update add nginx bash && \
    rm -fR /var/cache/apk/*

ADD public/ /pub

CMD [ "/sbin/nginx-boot" ]
EXPOSE 80
