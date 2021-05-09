FROM ruby:2.7
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /movie-gallery-rails #your app name
WORKDIR /movie-gallery-rails
ADD Gemfile /movie-gallery-rails/Gemfile
ADD Gemfile.lock /movie-gallery-rails/Gemfile.lock
RUN bundle install
ADD . /movie-gallery-rails
