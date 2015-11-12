gulp=./node_modules/.bin/gulp
npm=$(shell which npm)

install:
	$(npm) install

test-watch:
	test -f $(gulp)
	$(gulp) watch
