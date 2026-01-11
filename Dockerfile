FROM ruby:2.1

# Fix Debian Jessie (EOL) repositories
RUN sed -i 's|http://deb.debian.org/debian|http://archive.debian.org/debian|g' /etc/apt/sources.list \
 && sed -i 's|http://security.debian.org|http://archive.debian.org/debian-security|g' /etc/apt/sources.list \
 && sed -i '/jessie-updates/d' /etc/apt/sources.list \
 && echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/99no-check-valid

# Install system dependencies (force archive acceptance)
RUN apt-get update -o Acquire::Check-Valid-Until=false \
 && apt-get install -y --force-yes \
    nodejs \
    sqlite3 \
    libsqlite3-dev \
    build-essential \
    git \
 && rm -rf /var/lib/apt/lists/*

# Correct Bundler for Rails 3.1
RUN gem install bundler -v 1.17.3

WORKDIR /app
