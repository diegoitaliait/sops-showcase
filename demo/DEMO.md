# Demo

## Encrypt file old way

```bash
sops --encrypt --azure-kv https://kv-sops-showcase.vault.azure.net/keys/key-sops-showcase/3dd37eb2a5c34df3a40139164e520e87 secrets-in.dec.yaml > secrets-out.enc.yaml
```

```bash
sops --decrypt --azure-kv https://kv-sops-showcase.vault.azure.net/keys/key-sops-showcase/3dd37eb2a5c34df3a40139164e520e87 secrets-out.enc.yaml > view-mysecrets.yaml
```

## Encrypt automatically

```bash
sops my-env.encrypt.yaml
```

## Read Env files

```bash
FILETEMP="$(mktemp)" && sops -d .env > $FILETEMP && echo $FILETEMP && source $FILETEMP && export $(cut -d= -f1 $FILETEMP) && sh see_env_vars.sh
```

## DOCKER example

from root:

```bash
FILETEMP="$(mktemp)" && sops -d scripts/.env > $FILETEMP && sleep 3 && docker-compose --env-file $FILETEMP up -d
```
