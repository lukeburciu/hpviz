## Environment

The python environment and packages is managed by `pipenv`.

To access:

`pipenv shell`

To exit:

`exit`

## Dependencies installation

Some packages are only required during the development process and should not be deployed to production e.g. mkdocs.  While others i.e. ansible are required for deployment to production.

=== "For Development"
    ````
    pipenv install package-x -d
    ````

=== "For Production"
    ````
    pipenv install package-y
    ````

!!! Note
    See [pipenv](https://pipenv-fork.readthedocs.io/en/latest/index.html) documentation for details.


### pipfile

```
hpviz\
    pipfile.yml     # updated by pipenv when adding/removing python dependencies.
    pipfile.lock    # updated automatically when dependencies are installed.
```
The `pipfile.yml` gets updated with the list of packages under the relevant sections as they're installed

!!! Example "pipfile.yml"
    ``` yaml
    --8<-- "././pipfile"
    ```
