$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "filta/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "filta"
  s.version     = Filta::VERSION
  s.authors     = ["Stuart Chinery"]
  s.email       = ["stuart.chinery@gmail.com"]
  s.homepage    = "https://github.com/sleepingstu/filta"
  s.summary     = "Super simple filtering for ActiveRecord"
  s.description = "Super simple filtering for ActiveRecord, inspired by Justin Weiss' Gist - https://gist.github.com/justinweiss/9065666"
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
