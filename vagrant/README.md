# Vagrant Development Directories

```

.
├── README.md
├── scripts
│   ├── deploy.sh
│   └── provision.sh
├── sink
│   ├── data
│   └── hpviz
└── viz
    └── hpviz

```

These directories are shared with the relevant VM on startup

Custom directories can be added in the Vagrantfile under each VM config

## scripts

provisioning scripts used on VMs

## viz

- hpviz -> /opt/hpviz: project deployment directory share

## sink

- data -> /data: log data: for ingestion testing
- hpviz -> /opt/hpviz: project deployment directory share
