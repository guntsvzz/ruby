FROM ruby:3.0-bullseye as base

RUN apt update && apt upgrade -y 

RUN apt-get update -qq
RUN apt-get install -y \
    build-essential \
    apt-utils \
    libpq-dev \
    nodejs \
    rails \
    rbenv 

# Create a new Rails application with PostgreSQL
# RUN rails new blog -d postgresql

WORKDIR /app

RUN gem install bundler

COPY ./blog/Gemfile* ./

RUN bundle install

ADD ./blog . 

ARG DEFAULT_PORT 3000

EXPOSE ${DEFAULT_PORT}

# CMD [ "bundle","exec", "puma", "config.ru"] 
# CMD ["rails","server"] # you can also write like this.
CMD ["tail", "-f", "/dev/null"]