---
title: Data Backups
---

## Project Data to backup

Project data is being stored in central location on all remote hosts.

```bash
/opt/hpviz/
```

## Playbook to backup
To backup to your local development machine

```bash
make backup
```

!!! Requirements
    you will need to have the private key for ansible-cicd user installed in ~/.ssh/is_rsa_ansibleci for the make command to work properly.

This will backup the contents of the remote viz server to:

```bash
hpviz/
    files/
        backup/    ## backups are stored under host-timestamp directory
```

!!! Note
    These backups will not be stored in Source control

!!! Warning
    Backup size can be LARGE!


!!! Example "backup-remote.yml ansible playbook"
    ```yaml
        --8<-- "././backup-remote.yml"
    ```
