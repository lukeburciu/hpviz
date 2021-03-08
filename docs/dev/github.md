## Actions

Github actions are used for the projects CICD

```
.github\
    workflows\                
        ansible-deploy.yml  # deployment action will only run after linting passes
        ansible-lint.yml    # pull request ansible linting
        main.yml            # general lint on push
```

## Pre-commit hooks

pre-commit hooks are used to run a number of locals tests before the commit occurs
