AGDA=agda

.PHONY : test
test : Everything.agda
	agda -i. Everything.agda

.PHONY : listings
listings : Everything.agda
	agda -i. -isrc --html Everything.agda -v0

clean :
	find . -type f -name '*.agdai' -delete
