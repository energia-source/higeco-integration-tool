FROM amd64/alpine:3.14

ENV DFOLDER=/app/logs
ENV STARTUP_COMMAND_RUN_CRON="crond -f -d 8"

COPY ./ /app
COPY wrapper.sh /

RUN apk update && \
    apk add --no-cache bash curl jq

RUN adduser -D -g www www && \
    mkdir -p ${DFOLDER} && \
    chown -R www:www /app ${DFOLDER} && \
    chmod +x -R /app && \
    chmod +x wrapper.sh

WORKDIR /app

RUN rm -rf .git .gitignore Dockerfile wrapper.sh

USER www

ENTRYPOINT /wrapper.sh