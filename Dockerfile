FROM amd64/alpine:3.14

ENV DFOLDER /app/logs
ENV STARTUP_COMMAND_RUN_CRON="crond -f -d 8"

COPY wrapper.sh /

RUN apk update && \
    apk add bash curl jq && \
    chmod +x wrapper.sh && \
    mkdir -p ${DFOLDER}

COPY ./ /app

WORKDIR /app

RUN rm -rf .git .gitignore Dockerfile wrapper.sh && \
    chmod +x -R ./

ENTRYPOINT /wrapper.sh