require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module AppPrototype
  class Application < Rails::Application
    config.load_defaults 5.1
    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
      g.test_framework :rspec
    end
  end
end
