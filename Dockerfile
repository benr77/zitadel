FROM ghcr.io/zitadel/zitadel:latest

COPY config/db-name-fix.yaml db-name-fix.yaml

CMD [ \
      "start-from-init", \
      "--config", "db-name-fix.yaml", \
      "--masterkey", "MasterkeyNeedsToHave32Characters", \
      "--tlsMode", "disabled" \
]
