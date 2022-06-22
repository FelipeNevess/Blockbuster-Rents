require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Locadora
  class Application < Rails::Application
    config.load_defaults 6.1
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :'pt-BR'
  end
end
