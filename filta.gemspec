# frozen_string_literal:true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "filta/version"

Gem::Specification.new do |spec|
  spec.required_ruby_version = ">= 2.5"
  spec.name = "filta"
  spec.version = Filta::VERSION
  spec.authors = ["Boxt Developers"]
  spec.email = ["developers@boxt.co.uk"]
  spec.homepage = "https://github.com/boxt/filta"
  spec.summary = "Simple filtering for ActiveRecord"
  spec.description = "Simple filtering for ActiveRecord, inspired by Justin Weiss 'Gist - "\
                     "https://gist.github.com/justinweiss/9065666"
  spec.license = "MIT"

  spec.files = Dir[
    "lib/**/*",
    "MIT-LICENSE",
    "Rakefile",
    "README.md",
    "VERSION"
  ]

  spec.add_dependency "rails", ">= 5.2", "~> 6.0"
  spec.add_development_dependency "boxt_ruby_style_guide", "~> 7.1"
  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.9"
  spec.add_development_dependency "rspec-nc", "~> 0.3"
  spec.add_development_dependency "rspec-rails", "~> 4.0"
  spec.add_development_dependency "simplecov", "~> 0.18"
  spec.add_development_dependency "sqlite3", "~> 1.3"
  spec.add_development_dependency "with_model", "~> 2.0"
end
