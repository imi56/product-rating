# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  ```2.6.0```

* System dependencies
  * Docker version 19.03.5 or above

* To run the application on follow the following steps:
  * Clone the repository using following command
    * git clone https://github.com/imi56/product-rating.git
  * ```cd product-raitng```
  * docker-compose build
  * docker-compose up
  * Run the database migration
    * docker-compose run --rm app bundle exec rake db:migrate
  * Create the seed data
    * docker-compose run --rm app bundle exec rake db:seed
  * Visit http://localhost:3000/products/1/rating to for rating API

