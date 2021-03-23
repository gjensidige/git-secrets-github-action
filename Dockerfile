FROM alpine

RUN apk --update add bash git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY git-secrets/git-secrets /usr/local/bin/git-secrets
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /usr/local/bin/git-secrets

ENTRYPOINT ["sh", "/entrypoint.sh"]
