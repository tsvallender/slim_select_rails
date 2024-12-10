require "rails"

module SlimSelectRails
  class Engine < Rails::Engine
    PRECOMPILE_ASSETS = %w( slimselect.min.js slimselect.css )

    initializer "slimselect.assets" do
      if Rails.application.config.respond_to?(:assets)
        Rails.application.config.assets.precompile += PRECOMPILE_ASSETS
      end
    end
  end
end
