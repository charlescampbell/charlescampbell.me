VERSION = $(shell cat VERSION)

new-version:
	$(if $(shell command -v npx),, \
		$(error No npx executable in PATH, please install NodeJS))
	$(if $(shell command -v standard-version),, \
		$(error No standard-version executable in PATH, \
			install with: npm i -g standard-version))

	npx standard-version

lint:
	$(eval IMAGE := $(shell docker build -f Dockerfile.test . -q))
	docker run --rm "$(IMAGE)" sh -c "bundle exec rubocop"

pr:
	rspec && rubocop

deploy:
	bundle exec cap production deploy