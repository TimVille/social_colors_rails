module SocialColorsRails
  class Engine < ::Rails::Engine
    isolate_namespace SocialColorsRails

    initializer "SocialColorsRails.mount_engine", before: :load_config_initializers do |app|
      Rails.application.routes.append do
        mount SocialColorsRails::Engine, at: "/social_colors_rails"
      end
    end

    initializer 'SocialColorsRails.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper SocialColorsRails::ApplicationHelper
      end
    end
  end
end
