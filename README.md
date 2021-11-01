# sops-showcase

mozilla sops showcase

## Why SOPS?

<https://github.com/mozilla/sops#motivation>

## SOPS & Azure

For ours example is mandatory to have:

- Azure account with a key vault
- GPG local key as backup

### Azure key vault setup

```bash
# Set subscription
az account set --subscription <your subscription>
# Create a resource group
az group create -n sops-showcase -l germanywestcentral
```

```bash
# create a Key Vault instance
az keyvault create -n kv-sops-showcase \
   -g sops-showcase \
   -l germanywestcentral 
```

```bash
# create an key for encryption / decryption 
az keyvault key create -n key-sops-showcase \
    --vault-name kv-sops-showcase \
    --ops encrypt decrypt \
    --protection software
```

> ⚠️ after the key creation is mandatory to allow your user in the section "access policies" to encript/decrypt

### Azure key vautl with SP user

> For more secure workflow for exmaple with SP users, please follow this guide <https://www.thorsten-hans.com/encrypt-your-kubernetes-secrets-with-mozilla-sops/> or <https://github.com/mozilla/sops#encrypting-using-azure-key-vault>

## File description

Sops allow to use this file formats:

- yaml
- json
- binary
- env
- ini

You can find some examples into the folder `simple-file-examples` or read doc <https://github.com/mozilla/sops#important-information-on-types>

## Encrypt file

```bash
# Encrypt file
## Load key unique identifier
KV=$(az keyvault key show --name $KEY_NAME --vault-name $KEY_VAULT_NAME | jq -r ".key.kid")
## e.g.
KV=$(az keyvault key show --name key-sops-showcase  --vault-name kv-sops-showcase | jq -r ".key.kid")
echo $KV #show the url

sops --encrypt --azure-kv $KV secrets-in.dec.yaml > secrets-in.enc.yaml
# e.g.
sops --encrypt --azure-kv https://kv-sops-showcase.vault.azure.net/keys/key-sops-showcase/3dd37eb2a5.....520e87 secrets-in.dec.yaml > secrets-in.enc.yaml
```

## Decrypt file

Show values inside terminal

```bash
sops --decrypt secrets-in.enc.yaml
```

If you want to do that inside an editor (vim)

```bash
sops --decrypt secrets-in.enc.yaml
```

## Documentation & sources

- <https://github.com/mozilla/sops>
- <https://www.youtube.com/watch?v=V2PRhxphH2w>
- <https://www.thorsten-hans.com/encrypt-your-kubernetes-secrets-with-mozilla-sops/>
