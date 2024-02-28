FROM ghcr.io/zitadel/zitadel:latest

COPY ./config/config.yaml .
COPY ./config/init-steps.yaml .

CMD [ \
      "start-from-init", \
      "--config", "config.yaml", \
      "--steps", "init-steps.yaml", \
      "--masterkeyFromEnv", \
      "--tlsMode", "disabled" \
]
