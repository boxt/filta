$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ar_simple_filter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ar-simple-filter"
  s.version     = Ar::Simple::Filter::VERSION
  s.authors     = ["Stuart Chinery"]
  s.email       = ["stuart.chinery@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Ar::Simple::Filter."
  s.description = "TODO: Description of Ar::Simple::Filter."
  s.license     = "MIT"

  s.files = Dir["
    {app, config, db, lib}/**/*",
    "MIT-LICENSE",
    "Rakefile",
    "README.md"
  ]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "sqlite3"
end
