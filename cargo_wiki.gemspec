$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem"s version:
require "cargo_wiki/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cargo_wiki"
  s.version     = CargoWiki::VERSION
  s.authors     = ["Rawane ZOSSOU"]
  s.email       = ["dev@raw1z.fr"]
  s.homepage    = "http://github.com/raw1z/cargo_wiki"
  s.summary     = "Wiki engine"
  s.description = "Wiki engine based on Rails 3 engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["{spec, features}/**/*"]

  s.add_dependency "rails", "~> 3.2.1"
  s.add_dependency "jquery-rails", '~> 2.2.1'
  s.add_dependency "haml-rails"
  s.add_dependency "sass-rails"
  s.add_dependency "compass-rails"
  s.add_dependency "coffee-rails"
  s.add_dependency "execjs"
  s.add_dependency "paper_trail"
  s.add_dependency "simple_form"
  s.add_dependency "rails3-generators"
  s.add_dependency "redcarpet"
  s.add_dependency "rdiscount"
  s.add_dependency "acts-as-taggable-on"
  s.add_dependency "bcrypt-ruby"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "faker"
  s.add_development_dependency "awesome_print"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "cucumber-rails"
  s.add_development_dependency "launchy"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "fuubar"
  s.add_development_dependency "fuubar-cucumber"
end
