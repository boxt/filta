# frozen_string_literal: true

source "https://rubygems.org"

# Needed until Ruby 3.3.4 is released
# * https://github.com/ruby/net-pop/issues/26
# * https://github.com/ruby/ruby/pull/11006
gem "net-pop", github: "ruby/net-pop", tag: "v0.1.2"

gemspec

group :development do
  gem "boxt_rubocop", "2.9.1"
  gem "rake", "~> 13.2"
  gem "rspec", "~> 3.13"
  gem "rspec-rails", "~> 6.1"
  gem "simplecov", "~> 0.22"
  gem "sqlite3", "~> 1.7"
  gem "with_model", "~> 2.1"
end
