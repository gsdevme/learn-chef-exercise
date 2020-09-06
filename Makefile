.PHONY: all
default: all;

clean:
	rm -rf vendor/
	rm -rf Gemfile.lock
	rm -rf Berksfile.lock
	rm -rf cookbooks

install:
	gem install bundler

bundle:
	bundle check --path=vendor/bundle || bundle install --path=vendor/bundle --retry=3

berks:
	bundle exec berks install

kitchen:
	bundle exec kitchen test

all: bundle kitchen
