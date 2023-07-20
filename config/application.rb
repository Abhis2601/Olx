require_relative "boot"

require "rails/all"
<<<<<<< HEAD
=======
require "sprockets/railtie"
>>>>>>> e3e9c9f (20 July active admin)

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

<<<<<<< HEAD
module CheckAuth
=======
module Olx
>>>>>>> e3e9c9f (20 July active admin)
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
<<<<<<< HEAD
    config.api_only = true
=======
    config.middleware.use Rack::MethodOverride
    config.middleware.use ActionDispatch::Flash
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore
>>>>>>> e3e9c9f (20 July active admin)
  end
end
