.PHONY: requirements.txt

install: bin/pip
	$< install -r requirements.txt

upgrade: bin/pip
	$< install --upgrade -r requirements.txt

run: bin/jupyter jupyter-gauche
	$< notebook

bin/jupyter: install

jupyter-gauche: bin/python
	$< -m jupyter_gauche.install

bin/python: bin

bin/pip: bin

bin:
	pyvenv .

clean:
	rm -rf bin lib share
