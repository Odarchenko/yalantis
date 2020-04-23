FROM ruby:2.6.3
RUN gem install bundler -v '2.1.4'
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

CMD ["rails", "server", "-b", "0.0.0.0"]
