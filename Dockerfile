FROM alpine

ENV SOPS_INIT="Init variable"

COPY scripts/see_env_vars.sh see_env_vars.sh
CMD ["sh", "see_env_vars.sh"]
