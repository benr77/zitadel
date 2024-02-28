FROM ghcr.io/zitadel/zitadel:latest

CMD ["start-from-init", "--masterkey", "MasterkeyNeedsToHave32Characters", "--tlsMode", "disabled"]
