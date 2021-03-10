.PHONY: install galaxy

install:
	pipenv install -d

build:
	pipenv run mkdocs build

serve: build
	pipenv run mkdocs serve

clean:
	rm -rf site/

backup:
	pipenv run ansible-playbook -i prod.ini backup-remote.yml --vault-password-file ~/.hpviz-vault --user hpviz-ci --private-key ~/.ssh/id_rsa_ansibleci

roles:
	pipenv run ansible-galaxy role install -r requirements.yml --roles-path roles --force

collections:
	pipenv run ansible-galaxy collection install -r requirements.yml --force

galaxy: roles collections

deploy-dev:
	pipenv run ansible-playbook -i dev.ini site.yml --vault-password-file ~/.hpviz-vault
