module Refinery
  module Cooperations
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Cooperations

      engine_name :refinery_cooperations

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "cooperation_types"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.cooperations_admin_cooperation_types_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/cooperations/cooperation_type',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/cooperations/cooperation_types(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::CooperationTypes)
      end
    end
  end
end
