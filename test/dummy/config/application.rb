# frozen_string_literal: true

require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)
require "filta"

module Dummy
  class Application < Rails::Application
    Rails.application.config.active_record.sqlite3.represent_boolean_as_integer = true
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
