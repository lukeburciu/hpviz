
Currently all data proessing is performed by [Vector.dev](https://vector.dev/)

## Vector configuration templates

Ansible uses [Jinja](https://jinja2docs.readthedocs.io/en/stable/) templates to create the config files for the vector processes

```bash
templates
├── elastic.vector.toml.j2
├── sink.vector.toml.j2
└── viz.vector.toml.j2
```

### sink

!!! example "sink.vector.toml template"
    ```yaml
    --8<-- "././templates/sink.vector.toml.j2"
    ```

### viz

!!! example "viz.vector.toml template"
    ```yaml
    --8<-- "././templates/viz.vector.toml.j2"
    ```

!!! example "elastic.vector.toml template"
    ```yaml
    --8<-- "././templates/elastic.vector.toml.j2"
    ```
