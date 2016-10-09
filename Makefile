.PHONY: requirements.txt
gulp=./node_modules/.bin/gulp
npm=$(shell which npm)

install: env/bin/pip
	$< install -r requirements.txt

upgrade: env/bin/pip
	$< install --upgrade -r requirements.txt

run: env/bin/jupyter jupyter-gauche
	$< notebook

env/bin/jupyter: install

jupyter-gauche: env/bin/python
		$< -m jupyter_gauche.install

env/bin/python: env/bin

env/bin/pip: env/bin

env/bin:
	test -d env || virtualenv -p python3 env

clean:
	rm -rf env
	mkdir -p env
