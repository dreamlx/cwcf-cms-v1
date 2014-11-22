module Refinery
  module Cooperations
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Cooperations

      engine_name :refinery_cooperations

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "cooperations"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.cooperations_admin_cooperations_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/cooperations/cooperation'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Cooperations)
      end
    end
  end
end
