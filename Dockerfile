FROM alpine
ENV CONFIG_JSON=none
RUN apk add --no-cache --virtual .build-deps bash openssl ca-certificates curl unzip \
 && curl -fsSL https://raw.githubusercontent.com/daiaji/v2fly-podman/master/v2ray.sh | bash
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
ENTRYPOINT /configure.sh
EXPOSE 80 8080
