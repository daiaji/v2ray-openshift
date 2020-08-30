FROM alpine
ENV CONFIG_JSON=none
RUN apk add --no-cache --virtual .build-deps bash ca-certificates curl unzip \
 && curl -fsSL https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh | bash
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
ENTRYPOINT /configure.sh
EXPOSE 80 8080
