require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Freecableinstall
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # For custom error pages
    config.exceptions_app = self.routes

    # Generating URLs in Action Mailer Views
    config.action_mailer.default_url_options = { host: 'www.Freecableinstall.com' }
    config.action_mailer.asset_host = 'https://www.Freecableinstall.com'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end


51666