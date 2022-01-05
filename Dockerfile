# syntax=docker/dockerfile:1
FROM ruby:2.7
EXPOSE 3000
RUN apt-get update -qq && apt-get install -y postgresql-client

WORKDIR /api-ruby
COPY Gemfile /api-ruby/Gemfile
COPY Gemfile.lock /api-ruby/Gemfile.lock
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]