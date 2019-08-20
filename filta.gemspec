# frozen_string_literal: true

# rubocop:disable Style/ExpandPathArguments
# NOTE: This is because of Gemfury failing with __dir__
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
# rubocop:enable Style/ExpandPathArguments

# Maintain your gem's version:
require "filta/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "filta"
  s.version     = Filta::VERSION
  s.authors     = ["Boxt Developers"]
  s.email       = ["developers@boxt.co.uk"]
  s.homepage    = "https://github.com/boxt/filta"
  s.summary     = "Super simple filtering for ActiveRecord"
  s.description = "Super simple filtering for ActiveRecord, inspired by Justin Weiss' Gist - "\
                  "https://gist.github.com/justinweiss/9065666"
  s.license     = "MIT"

  s.files = Dir[
    "lib/**/*",
    "MIT-LICENSE",
    "Rakefile",
    "README.md",
    "VERSION"
  ]

  s.add_dependency "rails", "~> 5.2"

  s.add_development_dependency "boxt_ruby_style_guide", "~> 2.1"
  s.add_development_dependency "bundler", "~> 2.0"
  s.add_development_dependency "minitest", "~> 5.11"
  s.add_development_dependency "minitest-bang", "~> 1.0"
  s.add_development_dependency "minitest-fail-fast", "~> 0.1"
  s.add_development_dependency "minitest-macos-notification", "~> 0.0"
  s.add_development_dependency "minitest-reporters", "~> 1.3"
  s.add_development_dependency "rake", "~> 12.3"
  s.add_development_dependency "simplecov", "~> 0.16"
  s.add_development_dependency "sqlite3", "~> 1.3"
  s.add_development_dependency "with_model", "~> 2.0"
end
