# frozen_string_literal: true

# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../test/dummy/config/environment.rb", __dir__)
# ActiveRecord::Migrator.migrations_paths = [File.expand_path("../../test/dummy/db/migrate", __FILE__)]
require "rails/test_help"

require "minitest/autorun"
require "minitest/bang"
require "minitest/fail_fast"
require "minitest/macos_notification"
require "minitest/reporters"
require "with_model"

Minitest::Reporters.use!(
  [
    Minitest::Reporters::SpecReporter.new,
    Minitest::Reporters::MacosNotificationReporter.new(title: "Filta gem")
  ],
  "test",
  Minitest.backtrace_filter
)

# Rails::TestUnitReporter.executable = 'bin/test'

module ActiveSupport
  class TestCase
    extend Minitest::Spec::DSL
    extend WithModel
  end
end
