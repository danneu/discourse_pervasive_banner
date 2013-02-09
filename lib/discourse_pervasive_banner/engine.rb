require 'discourse_pervasive_banner/plugin'

module DiscoursePervasiveBanner
  class Engine < Rails::Engine

    engine_name 'discourse_pervasive_banner'

    initializer "discourse_pervasive_banner.configure_rails_initialization" do |app|

      app.config.after_initialize do 
        DiscoursePluginRegistry.setup(DiscoursePervasiveBanner::Plugin)
      end
    end

  end
end
