# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name          = 'devise-mongo_mapper'
  s.version       = '0.0.2'
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Brandon Keepers']
  s.email         = ['brandon@collectiveidea.com']
  s.homepage      = "http://github.com/collectiveidea/devise-mongo_mapper"
  s.summary       = "MongoMapper ORM for devise"
  s.files         = Dir.glob('lib/**/*') + ['README.md']
  s.require_path  = 'lib'

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "devise", "~> 1.1.0"
  s.add_development_dependency "bundler", ">= 1.0.0"
end
