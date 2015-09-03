gosh=$(shell which gosh)
i=01
.PHONY:test

test:
	$(gosh) test/ques$(i).scm

watch-test:
	watch $(gosh) test/ques$(i).scm
