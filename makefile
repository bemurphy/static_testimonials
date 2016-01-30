.PHONY : all

all: build deploy

build:
	ruby ./build.rb

deploy:
	env $$(cat .env) ./sync.sh
