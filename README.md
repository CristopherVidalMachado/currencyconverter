# README
[ ![Codeship Status for CristopherVidalMachado/currencyconverter](https://app.codeship.com/projects/44d0b170-61e4-0136-16e3-1e2a021b2015/status?branch=master)](https://app.codeship.com/projects/296693)


* Ruby version 2.5.1

* System dependencies
    * apt-get update && apt-get install -qq -y --no-install-recommends \
nodejs yarn build-essential libpq-dev imagemagick git-all nano
* Configuration
    * Run:
    * docker-compose build
* Database creation
    * Run:
    * docker-compose run --rm app bundle exec rails db:create db:migrate
* Database initialization

* Services (job queues, cache servers, search engines, etc.)
   
* Deployment instructions
    * Codeship+Heroku

