.PHONY: serve build install

install:
	pipenv install -d

build:
	pipenv run mkdocs build

serve: build
	pipenv run mkdocs serve

clean:
	rm -rf site/

backup:
	pipenv run ansible-playbook -i prod.ini backup-remote.yml --vault-password-file ~/.hpviz-vault --user root

deploy-dev:
	pipenv run ansible-playbook -i dev.ini site.yml --vault-password-file ~/.hpviz-vault
