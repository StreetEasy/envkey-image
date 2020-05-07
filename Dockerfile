FROM alpine:3.6
RUN apk upgrade \
  && apk update \
  && apk add curl
RUN curl -s https://raw.githubusercontent.com/envkey/envkey-source/master/install.sh | sh
ENTRYPOINT ["envkey-source"]
