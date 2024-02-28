FROM ghcr.io/zitadel/zitadel:latest

COPY ./config/config.yaml .
COPY ./config/init-steps.yaml .

CMD [ \
      "start-from-init", \
      "--config", "config.yaml", \
      "--steps", "init-steps.yaml", \
      "--masterkey", "193ce543-40ae-4b84-a846-dc8c4fca4b6f", \
      "--tlsMode", "disabled" \
]
