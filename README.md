# charlescampbell.me

A basic website to act as a digital portfolio for myself.

---

## Development

### Developing Locally

1. Clone this project to your machine
2. Run `bundle install` to install the apps dependencies
3. Run `bin/rails server` to start the app at 'http://localhost:3000'
4. Run `bundle exec rspec` to run the ruby test suite
5. Run `bundle exec rubocop` to run the lint tool
6. Run `bundle exec rails console` to boot up the console
7. Finally write some code!

### Developing in Docker

1. Build the docker image for the project `docker-compose build`
2. Start the application in docker `docker-compose up`
3. Run rubocop inside the container `make lint`

_Note:_ You made need to start up the database for the first time

1. Create the databases for the docker container `docker-compose run app bundle exec rake db:create`
2. Migrate the databases for the docker container `docker-compose run app bundle exec rake db:migrate`
3. Seed the database for the container `docker-compose run app bundle exec rake db:seed`

### Commiting to the repository

This project follows the conventional commit specification detailed here
`www.conventionalcommits.org`

`fix` : Any small fix to the code base
`refactor` : Refactoring of code
`feat` : A finished feature with full functionality
`docs` : Documentation changes
`test` : Any form of testing
`lint` : Rubocop fixes

## Release

1. Run `make new-version` this will:
   - Look at the previous version and the commits to workout the version
   - Bump the version in the version file
   - Generate a changelog using the conventional commits
   - Tag and commit the new release
2. Run `make deploy` this will:
   - Run `cap production deploy` and release the app
