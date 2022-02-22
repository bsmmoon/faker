# https://hub.docker.com/_/ruby/
FROM ruby:3.0.2

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN ["chmod", "+x", "./start-dev.sh"]
CMD ["./start-dev.sh"]
