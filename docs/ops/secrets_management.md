
## Keepass

[Keepass](https://docs.github.com/en/actions) manages all of the projects secrets ad is used to generate passwords in a secure manner.


!!! Important

    ALL secrets are kept in the keepass database.

    Secrets include:

    - passwords
    - api keys/tokens
    - certificate private keys
    - ssh private certificates

## Ansible Vault

Any secret used by ansible is kept in vault files, that are encrypted within the project directory.  (A copy must also live in keepass)

For the development environment to aid and prevent re-entering the vault secret manually each time a variable is changed. To work around this the secret is kept in a file outside the project source directory, best practices is to keep it under the user home directory in a protected file.

```bash
~/.hpviz-vault
```

This file is passed into the decryption / encryption process.

!!! Example "vault.yml"
    ```bash
    group_vars/
    ├── sink
    │   ├── vars.yml
    │   └── vault.yml
    └── viz
        ├── vars.yml
        └── vault.yml
    host_vars/
    ├── dev-sink
    │   ├── vars.yml
    │   └── vault.yml
    ├── dev-viz
    │   ├── vars.yml
    │   └── vault.yml
    ├── thesink
    │   ├── vars.yml
    │   └── vault.yml
    └── viz001
        ├── vars.yml
        └── vault.yml
    ```

!!! Hint
    Use VSCode [ansible-vault plugin](https://marketplace.visualstudio.com/items?itemName=dhoeric.ansible-vault) in your development environment.

!!! Info
    See [documentation](https://docs.ansible.com/ansible/latest/user_guide/vault.html) for more Information.

!!! Warning
    A pre-commit test should prevent unencrypted vault files from being committed to source control.

    This will only work if pre-commit has been initialised in the local development environment see [Development Getting Started guide](/dev/getting_started) or [pre-commit documentation](https://pre-commit.com)

!!! Danger
    Unencrypted vault files should not be committed to source control.

## Github Secrets

All secrets used in the CI/CD pipeline are managed in the github project [console](https://docs.github.com/en/actions/reference/encrypted-secrets)

These are passed as environmental variables to the running pipeline / actions.

!!! example "Required Github Secrets"
    ```
    ANSIBLE_VAULT_KEY    # Ansible vault key used in deployment.
    ANSIBLE_CI_KEY       # Ansible CICD service account ssh private key.
    ```
