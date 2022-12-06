FROM ruby:2.7.6
ADD . /basic-app
WORKDIR /basic-app
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

COPY Gemfile /basic-app/Gemfile
COPY Gemfile.lock /basic-app/Gemfile.lock
RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]