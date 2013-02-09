require 'discourse_plugin'

module DiscoursePervasiveBanner

  class Plugin < DiscoursePlugin
    
    def setup
      # Add our Assets
      register_js('discourse_pervasive_banner')
      register_css('discourse_pervasive_banner')
    end

  end
end
