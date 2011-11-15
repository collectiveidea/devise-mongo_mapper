# MongoMapper ORM for Devise

## Installation

Add MongoMapper and devise-mongo_mapper to your Gemfile

    gem 'mongo_mapper'
    gem 'devise-mongo_mapper',
      :git    => 'git://github.com/collectiveidea/devise-mongo_mapper

Comment out the current ORM in config/initializers/devise.rb, and add:

    require 'devise/orm/mongo_mapper'

Configure your model:

    class User
      include MongoMapper::Document
      plugin MongoMapper::Devise
      devise :registerable, :database_authenticatable, :recoverable
    end