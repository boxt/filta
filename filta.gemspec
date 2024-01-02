# frozen_string_literal:true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "filta/version"

Gem::Specification.new do |spec|
  spec.required_ruby_version = ">= 3.0"
  spec.name = "filta"
  spec.version = Filta::VERSION
  spec.authors = ["Boxt Developers"]
  spec.email = ["developers@boxt.co.uk"]
  spec.homepage = "https://github.com/boxt/filta"
  spec.summary = "Simple filtering for ActiveRecord"
  spec.description = "Simple filtering for ActiveRecord, inspired by Justin Weiss 'Gist - " \
                     "https://gist.github.com/justinweiss/9065666"
  spec.license = "MIT"
  spec.metadata = {
    "rubygems_mfa_required" => "true"
  }

  spec.files = Dir[
    "lib/**/*",
    "MIT-LICENSE",
    "Rakefile",
    "README.md",
    "VERSION"
  ]

  spec.add_dependency "rails", ">= 6", "< 8"
end
