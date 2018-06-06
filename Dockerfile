FROM ruby:2.5.1-alpine
RUN mkdir /app
WORKDIR /app
COPY ./Gemfile ./Gemfile.lock ./
RUN gem install bundler && bundler install
COPY . .
EXPOSE 3000
CMD ["bundler","exec","rails","server"]
