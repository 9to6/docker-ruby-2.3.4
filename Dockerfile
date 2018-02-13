FROM ruby:2.3.4-slim-jessie 
LABEL maintainer="9to5 ktk0011+dev@gmail.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential patch git libpq-dev nodejs && \
    rm -rf /var/lib/apt/lists/*

RUN gem install bundler --no-ri --no-rdoc
ENV BUNDLE_PATH /bundle
