
!!! Important
    Documenting your project is just as important as what you're building.

    In 12 months time do you think you'll remember where you were at?

## Location and Customisation
All project documentation lives in the projects 'docs' directory and written in mark-down format that's easy to update, especially with tools like [VSCode](https://code.visualstudio.com/).

``` bash
docs
├── arch
│   ├── components.md
│   ├── devops.md
│   ├── img
│   │   ├── CICD-Overview.png
│   │   ├── Highlevel-System-Architect.png
│   │   ├── sink-docker.png
│   │   ├── sink-viz.png
│   │   └── viz-docker.png
│   ├── infrastructure.md
│   └── overview.md
├── authors.md
├── dev
│   ├── ansible.md
│   ├── contributing.md
│   ├── docker-must.md
│   ├── documentation.md
│   ├── getting_started.md
│   ├── github.md
│   ├── img
│   │   ├── git-feature-flow.jpeg
│   │   └── must-flow.png
│   ├── makefile.md
│   ├── python.md
│   └── vagrant.md
├── img
│   ├── dashboard.png
│   └── sri-logo.png
├── index.md
├── license.md
├── ops
│   ├── backups.md
│   ├── bootstrapping.md
│   ├── cicd.md
│   ├── dashboards.md
│   ├── data_processing.md
│   ├── firewall.md
│   ├── github.md
│   ├── img
│   │   ├── cicd_detail_error.png
│   │   ├── cicd_error.png
│   │   ├── dashboard.png
│   │   └── elastic_datasource.png
│   ├── introduction.md
│   ├── secrets_management.md
│   ├── troubleshooting.md
│   └── users.md
└── releasenotes.md

```

See [mkdocs-material documentation](https://squidfunk.github.io/mkdocs-material/) for more information.

## Build documentation

```bash
make build
```

Will compile all documentation and generate the __site__ directory containing the html documentation this can be viewed locally.

!!! Note
    The __site__ directory is not included in source control as is dynamically generated.

## PDF Version

A pdf version of the documentation is generated on each change by the [mkdocs-with-pdf plugin](https://pypi.org/project/mkdocs-with-pdf/) and is located in:

```
hpviz\
    site\
        pdf\hpviz-docs.pdf
```

## Viewing Locally

To view or update locally

```bash
make serve
```
This will start up the mkdocs local server and your projects documentation will be available in your browser.

`http://localhost:8000`

## Making changes

Any changes to the document files or mkdocs.yml will be automatically updated when being displayed locally, with a page refresh, on the local server view each time you save, so allows you to see the changes as you make them.
