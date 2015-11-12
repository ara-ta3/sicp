gosh=$(shell which gosh)
i=01
.PHONY:test

test:
	$(gosh) test/ques$(i).scm

watch-test:
	watch $(gosh) test/ques$(i).scm

test-p:
	$(gosh) test/p$(i).scm

watch-test-p:
	watch $(gosh) test/p$(i).scm

test-all:
	find ./test -name "*.scm" |xargs -n 1 $(gosh)


