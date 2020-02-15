FROM ruby:2.6.0

RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends build-essential libpq-dev nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /casaone_assignment
WORKDIR /casaone_assignment

ADD Gemfile /casaone_assignment/Gemfile
ADD Gemfile.lock /casaone_assignment/Gemfile.lock
RUN gem update --system
RUN gem install bundler -v 2.0.1
RUN bundle install

ADD . /casaone_assignment
