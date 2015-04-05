module Refinery
  module Exhibitors
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Exhibitors

      engine_name :refinery_exhibitors

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "exhibitors"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.exhibitors_admin_exhibitors_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/exhibitors/exhibitor'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Exhibitors)
      end
    end
  end
end
