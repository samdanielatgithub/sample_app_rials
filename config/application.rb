require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Deploystudy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #config.autoload_paths += %W(#{config.root}/lib)
    # config/application.rb

# config/application.rb

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
    #config.time_zone = "Pacific Time (US & Canada)"
    # TODO make the header dynamic so we can skip doing this every time.
    #config.assets.precompile += ["backend.js"]

    config.assets.paths << "#{Rails.root}/app/assets"

    #config.cache_store = :redis_store, 'redis://localhost:6379'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
