# syntax = docker/dockerfile:1

FROM ruby:3.3.0-slim

WORKDIR /app

ENV RAILS_ENV=development \
    BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3

# Устанавливаем все необходимые зависимости в одном слое
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    build-essential \
    default-libmysqlclient-dev \
    pkg-config \
    libpq-dev \
    curl \
    git \
    netcat-traditional && \
    rm -rf /var/lib/apt/lists/*

# Создаем и устанавливаем права на директорию для гемов
RUN mkdir -p /usr/local/bundle && \
    chmod 777 /usr/local/bundle

# Копируем Gemfile и устанавливаем гемы
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4 --retry 3

COPY . .

RUN RAILS_ENV=production SECRET_KEY_BASE=dummy_key bundle exec rails assets:precompile

# Expose для development
EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]
