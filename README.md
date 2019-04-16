# README
* Project Title: Super Awesome Useful Storage Organization App

* Project Description:
  Organization tool for marking and cataloging items in 
  storage containers for easy retrieval of location and 
  whether an item exists within a user's belongings.

* Team Members:
  Kenney Hersch, Florentina Ilie
  
* Ruby version
  2.6.0
  
* System dependencies
  Ruby  2.6.0
  Rails 5.2.3
  SQLite3
  
* Configuration
  ```
  $ gem install rails
  $ mkdir cs362_storage_container
  $ cd cs362_storage_container
  $ rails new .
  ```
  Add rspec-rails gem to the Gemfile:
    ```
    group :development, :test do 
      gem "rspec-rails", "~> 3.7.0"
    end
    ```
  Install Rspec:
    ```
    $ bundle install
    $ rails generate rspec:install
    ```
    
* Database creation
  ```
  rake db:create:all
  rake db:migrate
  ```
  
* Database initialization

* How to run the test suite
  ```
  $ cd .../cs362_storage_container
  $ rspec 
  ```
  
* Services (job queues, cache servers, search engines, etc.)
  TDB

* Deployment instructions
  TDB

* ...
