FROM ruby:2.7
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /movie-gallary-rails #your app name
WORKDIR /movie-gallary-rails
ADD Gemfile /movie-gallary-rails/Gemfile
ADD Gemfile.lock /movie-gallary-rails/Gemfile.lock
RUN bundle install
ADD . /movie-gallary-rails