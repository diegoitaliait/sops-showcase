# sops-showcase

mozilla sops showcase

## Why SOPS?

<https://github.com/mozilla/sops#motivation>

## SOPS best features

* allow encription without password, you demand the RBAC checks and keys store to the cloud
* allow the creation of a single source of truth, using a repository and allow the share of the secrets without fear of loosing everything
* encription of only the values and not the keys, so is more simple to understand if something change during the manipulation

> version 1
```yaml
data:
    username: ENC[AES256_GCM,data:BD/+N6Af,iv:oKLkRsKHOiqJ6oLhz3fnCKEpuYhgKgui3hdPvwwvs5Q=,tag:4Uoax87NalBvC1OdypzOVw==,type:str]
    password: ENC[AES256_GCM,data:i5zG2fAPhjMdpAjcTGl+Y0+rRB6NmsXi,iv:98kzy4F2vUOIYpYARP4HJfy25Zx1DRo4j2Cnq68oIBg=,tag:NUTuqeNZd6H4jw6o4NxHog==,type:str]
    raw_value_unencrypted: this value will not encrypted because have a suffix _unencrypted
list:
    - ENC[AES256_GCM,data:6Q==,iv:XiAPxA/ech6LAStT+ewP9RGC4wCLJ8Py+r3sGhCLcXE=,tag:izREApcgw1uakkudgZhFKA==,type:int]
    - ENC[AES256_GCM,data:sQ==,iv:oUFAEI9wXEXPqStAjh3ENqJDxufKJmSrr4Y2NWVKNSE=,tag:/CL4vBX3QpyrnQVHJ8pH+g==,type:int]
    - ENC[AES256_GCM,data:aw==,iv:HhJ3cv2PXas3gKmKXyZQOG+5OeZ2r45UoeVQtwWoP0w=,tag:a4CFzJEv5Kf4Vv7BEtkjlw==,type:int]
    - ENC[AES256_GCM,data:T838,iv:wumN1RqWnaPLGXZUuEboX4svIzLh6dVCBbiyxN50ZAA=,tag:8VNlURqVFBMuwiGelfattg==,type:str]
    - ENC[AES256_GCM,data:3vX9,iv:2Ay3xfso07Md8XJd+3aufWDsZtzgN6/1/S2cS7zx75A=,tag:kfrKIVtYilS5FbNv0ATU7Q==,type:str]
    - ENC[AES256_GCM,data:x7Y9oQ==,iv:447dUDi5ODDsFb8CBu3h3+o/5MfljQ9jdmo+olm9wEM=,tag:LL8ehXNRji081WeBCla/PQ==,type:str]
sops:
    kms: []
    gcp_kms: []
    azure_kv:
        - vault_url: https://kv-sops-showcase.vault.azure.net
          name: key-sops-showcase
          version: 3dd37eb2a5c34df3a40139164e520e87
          created_at: "2021-10-31T17:11:09Z"
          enc: O3LltcdkiCOfNJ-r9_czgmzhHUbaCTA5JNNmrDnKIKfwcGJADAS0ED0jrngPNwHdvmSbppEwqBb7ui8NnC6tWxuJjD6YqLVQ-NdQ67Ufn92UgsxZEd-Qi0KS0yL639ORyAdJMUFPgivW919TSNFsdDFfSzQ0xET-f-mRaHMkxLVjZUwhudEJfGwp9hq2U1ttfa1f2ve37sDsmRI1rPgt7nw17Kklzb7OLM7EiqhvfwyditN78u15MGjQzHycNr4ob8gp5TAUNZ9kRumaqgxV0D59iZlgyVMq9PIXKGSSx79na75dtzbTrfpPJ4aBSvNabvy4zyadMy9viduBbtjMEw
    hc_vault: []
    age: []
    lastmodified: "2021-10-31T17:11:10Z"
    mac: ENC[AES256_GCM,data:VKsSPXmK93YA3VbBBxD57Q+TRVu6dlJSxBII6cy+mWOfcTC0oxEJRNeD/9zcc7k7IUw7IXv17MkVocBslFs1mNsQ41Kii1QuSe/KSwbBA5Oz0H15nDfMRAN/pek0QY5F+Ceuz9dmbGmyHBOUHRKLe1EAvzWbFIpkD5R+vVnrSL0=,iv:tMJBdh39tLK2vGUIpSn+KeSX7Y8Ga3PvP1WV7d5qN40=,tag:Z7oztlR/KdNL0vSJKsL03g==,type:str]
    pgp: []
    unencrypted_suffix: _unencrypted
    version: 3.7.1
```

> version 2
```yaml
data:
    username: ENC[AES256_GCM,data:rGXlf2OW,iv:QWsGMmVlwWm+Gae5MOS4yWwS5UESNxKCALmdfI0YslQ=,tag:jLtJIaQyf5E1iIl6yllffg==,type:str]
    password: ENC[AES256_GCM,data:OCiw3OBMi88TPW5Jn4VXqeWG3zqDdyAA,iv:TEUNIDJHxe88FBaJuPVjLVWIXA0YyRBAqUfUU9uRp5I=,tag:OyGIfwDv7Ma9z7bqfRl72A==,type:str]
    raw_value_unencrypted: this value will not encrypted because have a suffix _unencrypted
list:
    - ENC[AES256_GCM,data:Ow==,iv:alVK5j6M2h6Dn3K6WC5lTuMFTUo9YrVvoiW1vgz9Smk=,tag:NgcZKqQZodQ5VIntcU/R+A==,type:int]
    - ENC[AES256_GCM,data:0A==,iv:lgUgZLaqRzRpVkOYpAP3yvJqJREMHEWt7Dm33tRAwq4=,tag:XqNjvkkAZ8Zg4zhy5IymZg==,type:int]
    - ENC[AES256_GCM,data:cw==,iv:YuXtDpw1goDNBWcbXJr5XRBz1QVAk5NWR0Vq0Z8Kqvw=,tag:r9OOkP31sE+itKBGevyPqg==,type:int]
    - ENC[AES256_GCM,data:+52V,iv:j3yQM+miLb77Elq5I8m6IdVF2R09iDKs+Wo9Lpfa7Uc=,tag:ZiisTdLcBoUowGIGLuuxNA==,type:str]
    - ENC[AES256_GCM,data:bz2W,iv:I/h5Q6RtJqdhj6+vueUikfVt8JoiNrLFsEwMU3f9SS8=,tag:2WF0cVr8jCRGWxgaiqTBrA==,type:str]
    - ENC[AES256_GCM,data:fbXkzw==,iv:Q462FzPGhXVJgvlXPehq1wHzFkffNQ8904dEZbaYJUc=,tag:gjmcXrKEnzFtPHUjVLzNOA==,type:str]
new_data:
    new_username: ENC[AES256_GCM,data:ZM00AS28,iv:pKHS8FAK3DfVQFMGK/sDuZB10MgWwEBnMs+G816rfpo=,tag:lwMGrcKBBPduWpmFphMj7A==,type:str]
    new_password: ENC[AES256_GCM,data:UXs6JjM=,iv:40D7m0gIRnXRIaO0vj7QHPUF5rWMPKRoUz/MBVh0Wo0=,tag:PeBIyU0Kgs4UDgQJ1nAa8Q==,type:str]
sops:
    kms: []
    gcp_kms: []
    azure_kv:
        - vault_url: https://kv-sops-showcase.vault.azure.net
          name: key-sops-showcase
          version: 3dd37eb2a5c34df3a40139164e520e87
          created_at: "2021-11-19T17:01:56Z"
          enc: PYmvFInCif1TAzx9Gy2Hh3yskMSAzHYfK5431hTWm0mC4_mWr20B4yQcrFggLbeN83C-7cWoUr3ibcDKQ7gHQZ03AyL9WPstQyU1iDq6BJAwrDrXsdYn0g_Bn8tddBZTiqaAw1lgAkviWUOhmRhg4n-sy11AeIkXAjvhMO7jWKzN8VPqRrSflUqlDusaOtugHldERoM7I5Xp1il3RMdW3dAv9abgYbFMKtvNy6tl7WJSxq9VEZNc1sIjvK263VzfB-jTRMoK_-XC7OzHU9F3MMdKinlc7099Zbt_prG8HbtQDTBxptdz8qcXmyey--fAhU12L-i2CPlQg3Q6kUSTBg
    hc_vault: []
    age: []
    lastmodified: "2021-11-19T17:01:58Z"
    mac: ENC[AES256_GCM,data:ZIhGIsl60xO/MGJHhUvP/aGJSjKmcOGH6prcvxqTfocdnR6koClKG5U3Rg503eHh8FiLcC4nVuAp77uVYRjRf/tw0/LPWq1cxifs18c5R6aQqaCZCRHyB4R5tBw7BhTuaobYWIFn6DrnDHD/NOj5/r2alSR9Blx9sEceZ0Z50ew=,iv:4RDiPWjaLVtloDNN3DbYw6aK+YP6hnHmCoN45v6Z4MU=,tag:hzutgQOcViqH+nlZBY6yjw==,type:str]
    pgp: []
    unencrypted_suffix: _unencrypted
    version: 3.7.1

```

## SOPS & Azure

For ours example is mandatory to have:

- Azure account with a key vault (follow the giude bellow to create one)
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

## SOPS and multiple keys encryption/decryption

SOPS allow you to encrypt/decrypt every file with more than one key, in this way you can choose how to manage the security and the visibility of the files.

For example you can encrypt your development files with a DEV & PROD keys, is this way you can delete the development key (an error) in the future, but be able to decrypt the values with your production key.
Or remove the permission to some persons in dev, and still be able to decrypt the values.

## Use .sops.yaml to save encryption logic and rules

Sops is great but every time you need to pass and remember the keys, and other parameters.
To avoid this tedius operation, you can use a config file called `.sops.yaml` saved in the root directory,
that allow to save the creation rules, that can be configured depends on a regexp on files

for example:

> ⚠️ in the config file the key related to azure is `azure_keyvault` and not `azure-kv`

```yaml
# creation rules are evaluated sequentially, the first match wins
creation_rules:
  # upon creation of a file that matches the pattern dev.yaml,
  # AZURE_KMS set A is used
  - path_regex: .*/development/.*
    azure_keyvault: 'https://kv-sops-showcase.vault.azure.net/keys/key-sops-showcase/3dd37eb2a5c34df3a40139164e520e87'

  # prod files use AZURE_KMS set B in the PROD IAM
  - path_regex: .*/production/.*
    azure_keyvault: 'https://kv-sops-showcase.vault.azure.net/keys/key-sops-showcase/3dd37eb2a5c34df3a40139164e520e87'
    pgp: '61325F2CBC748D2BA8C057FF3E0C7C5AA552FC1A'

  # Finally, if the rules above have not matched, this one is a
  # catchall that will encrypt the file using KMS set C
  # The absence of a path_regex means it will match everything
  - pgp: '61325F2CBC748D2BA8C057FF3E0C7C5AA552FC1A'
```

in this example there are tree creation rules, that will be activated every time that use sops

```bash
sops dev.enc.yaml
```

as you can see, we don't need anymore to add the keyvault id

1. the first rules say that in the folder `development`, we will use only azure key to encrypt the files
2. the second rules, say that into the `production` folder we will use two keys, this is a best practice to have allways a backup just in case that the cloud will be not reachable
3. the third rule says that for every folder not included into the previus folder, only a pgp will be used

## Best practice

1. to avoid problems with cloud connection, is better to use at least two keys. For example one in cloud and one in local

## Documentation & sources

- <https://github.com/mozilla/sops>
- <https://www.youtube.com/watch?v=V2PRhxphH2w>
- <https://www.thorsten-hans.com/encrypt-your-kubernetes-secrets-with-mozilla-sops/>
- [Azure .sops.yaml file](https://github.com/mozilla/sops/issues/436)

## SOPS installation on MAC

```bash
brew install sops

brew install gnupg
```