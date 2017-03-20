require_relative 'boot'

# Pick the frameworks you want:
require "sprockets/railtie"

Bundler.require(:default, :development)

module TestApp
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.assets.enabled = true
    config.assets.version = '1.0'

    # replacement for environments/*.rb
    config.active_support.deprecation = :stderr
    config.eager_load = false
    config.active_support.test_order = :random rescue nil
  end
end
