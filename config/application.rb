require_relative "boot"

require "rails/all"
<<<<<<< HEAD
<<<<<<< HEAD
=======
require "sprockets/railtie"
>>>>>>> e3e9c9f (20 July active admin)
=======
require "sprockets/railtie"

>>>>>>> addfc9e (21 July modification)

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

<<<<<<< HEAD
<<<<<<< HEAD
module CheckAuth
=======
module Olx
>>>>>>> e3e9c9f (20 July active admin)
=======
module Olx
>>>>>>> addfc9e (21 July modification)
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
<<<<<<< HEAD
    config.api_only = true
=======
=======
>>>>>>> addfc9e (21 July modification)
    config.middleware.use Rack::MethodOverride
    config.middleware.use ActionDispatch::Flash
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore
<<<<<<< HEAD
>>>>>>> e3e9c9f (20 July active admin)
=======
>>>>>>> addfc9e (21 July modification)
  end
end
