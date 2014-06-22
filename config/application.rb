require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp1
  class Application < Rails::Application
    # set timezone
    config.time_zone = 'Tokyo'

    # model generate default activerecord
    config.generators do |g|
      g.orm :active_record
      # mongoid genetate is
      # rails generate mongoid:model
    end

    # grape is api support
    # config.paths.add "app/api", glob: "**/*.rb"
    # config.autoload_paths += Dir["#{config.root}/app/api/*"]


    # generators => haml
    config.generators do |g|
      g.template_engine :slim
      # 下記も指定しておくと無駄な helper / js / css が生成されない
      g.helper false
      g.stylesheets false
      g.javascripts false
      g.test_framework = "rspec"
      # コントローラ、ヘルパー、ビューのテストを生成しない
      g.controller_specs = false
      g.helper_specs = false
      g.view_specs = false

      g.test_framework :rspec,
          fixtures: true,
          view_specs: false,
          helper_specs: false,
          routing_specs: false,
          controller_specs: true,
          request_specs: false
      g.fixture_replacment :factory_girl, dir: "spec/factories"
    end


    # js load file
    config.assets.paths << Rails.root.join("lib", "assets", "javascripts")
  end
end
