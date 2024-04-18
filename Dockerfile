FROM ruby:3.2.3

WORKDIR /app

RUN apt-get update -qq && apt-get install -y nodejs npm postgresql-client

RUN gem install rails

COPY Gemfile Gemfile.lock ./

RUN rails db:migrate

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
