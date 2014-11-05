module Refinery
  module Previous
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Previous

      engine_name :refinery_previous

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "previous"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.previous_admin_previous_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/previous/previou'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Previous)
      end
    end
  end
end
