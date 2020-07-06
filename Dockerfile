FROM ruby:2.6.3-alpine

ENV APP_HOME /charliecampbell

RUN apk update \
  && apk add --no-cache  \
  build-base  \
  ruby-dev \
  postgresql-client \
  postgresql-dev \
  nodejs

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

RUN gem install bundler
RUN bundle install

ADD . $APP_HOME

CMD bundle exec rails server -p 3000 -b '0.0.0.0'