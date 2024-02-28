FROM ghcr.io/zitadel/zitadel:latest

COPY ./config .

CMD [ \
      "start-from-init", \
      "--config", "config/config.yaml", \
      "--steps", "config/init-steps.yaml", \
      "--masterkey", "193ce543-40ae-4b84-a846-dc8c4fca4b6f", \
      "--tlsMode", "disabled" \
]
