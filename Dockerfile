FROM ruby:3.1.2

ENV BUNDLER_VERSION=2.3.7

RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends \
       build-essential locales curl git vim gawk file \
       nodejs npm imagemagick libzbar-dev \
       libpq-dev postgresql-client \
       liblzma-dev zlib1g-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && gem update --system

RUN gem install bundler -v 2.3.7

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle check || bundle install

RUN bundle update

COPY package.json yarn.lock ./

RUN npm install -g yarn

RUN yarn install

RUN yarn upgrade

COPY . ./

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
