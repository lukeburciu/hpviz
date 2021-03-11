## Commands

`make install` - installs project dependencies and virtual python environment using pipenv'

`make build` - builds project documentation.

`make serve` - builds and serves project documentation on <https://localhost:8000>.

`make clean` - cleans documentation build artifacts.

`make backup` - backs up all remote hosts to local computer - Be careful LARGE files.

`make roles` - updates ansible role dependencies for the project.

`make collections` - updates ansible collection dependencies for the project.

`make galaxy` - updates both roles and collections.

`make lint` - lints the ansible playbooks.

`make test` - runs tests.

`make deploy-dev` - Deploys ansible playbooks to vagrant environment.

## Makefile Contents

```
--8<-- "././Makefile"
```
