# Vagrant Development Directories

```
.
├── README.md
├── scripts
│   └── provision.sh
├── shared
│   └── docker_images
├── sink
│   └── data
└── viz
```

These directories are shared with the relevant VM on startup

Custom directories can be added in the Vagrantfile under each VM config

## scripts

provisioning scripts used on VMs

## shared

- docker_images -> /var/lib/docker/image: so docker images don't have to be re-downloaded each time vm is re-provisioned

## viz

none

## sink

- data -> /data: log data for ingestion testing
