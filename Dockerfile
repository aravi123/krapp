FROM ruby:2.5.1
RUN mkdir /app
WORKDIR /app
COPY ./Gemfile ./Gemfile.lock ./
RUN gem install bundle && bundle install
COPY . .
EXPOSE 3000
CMD ["bundle","exec","rails","server"]
