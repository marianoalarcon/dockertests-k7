# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# README

Welcome to Time-checker

# System dependencies
  1. Docker
  2. Docker Compose

# Start project
  docker-compose build
  docker-compose up
  docker-compose run web bundle exec rails webpacker:install

# Database creation
  docker ps

  docker-compose exec web rails db:create
  docker-compose exec web rails db:migrate