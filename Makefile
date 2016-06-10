.PHONY: requirements.txt
gulp=./node_modules/.bin/gulp
npm=$(shell which npm)

install:
	$(npm) install

test-watch:
	test -f $(gulp)
	$(gulp) watch

run: env/bin/jupyter jupyter-gauche
	$< notebook

env/bin/jupyter: requirements.txt

jupyter-gauche: env/bin/python
		$< -m jupyter_gauche.install

requirements.txt: env/bin/pip
	$< install -r $@

env/bin/python: env/bin

env/bin/pip: env/bin

env/bin:
	test -d env || virtualenv -p python3 env

clean:
	rm -rf env
	mkdir -p env
