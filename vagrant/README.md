# Vagrant Development Directories

```
.
├── README.md
├── scripts
│   ├── deploy.sh
│   └── provision.sh
├── sink
│   └── data
└── viz
```

These directories are shared with the relevant VM on startup

Custom directories can be added in the Vagrantfile under each VM config

## scripts

provisioning scripts used on VMs

## sink

- data -> /data: log data: for ingestion testing
