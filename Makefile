.PHONY: build clean deploy

clean:
	rm -rf ./bin

build:
	sls build

deploy: clean build
	sls deploy --verbose

run:
	sls offline start
