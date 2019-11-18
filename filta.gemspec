# frozen_string_literal:true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "filta/version"

Gem::Specification.new do |spec|
  spec.name = "filta"
  spec.version = Filta::VERSION
  spec.authors = ["BoxtDevelopers"]
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

  spec.add_dependency "rails", "~> 5.2"

  spec.add_development_dependency"boxt_ruby_style_guide", "~> 2.1"
  spec.add_development_dependency"bundler", "~> 2.0"
  spec.add_development_dependency"minitest", "~> 5.13"
  spec.add_development_dependency"minitest-bang", "~> 1.0"
  spec.add_development_dependency"minitest-fail-fast", "~> 0.1"
  spec.add_development_dependency"minitest-macos-notification", "~> 0.2"
  spec.add_development_dependency"minitest-reporters", "~> 1.4"
  spec.add_development_dependency"rake", "~> 12.3"
  spec.add_development_dependency"simplecov", "~> 0.16"
  spec.add_development_dependency"sqlite3", "~> 1.3"
  spec.add_development_dependency"with_model", "~> 2.0"
end
