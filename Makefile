.PHONY: serve build install

install:
	pipenv install -d

build:
	pipenv run mkdocs build

serve: build
	pipenv run mkdocs serve

clean:
	rm -rf site/
