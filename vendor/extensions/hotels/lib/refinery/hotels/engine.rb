module Refinery
  module Hotels
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Hotels

      engine_name :refinery_hotels

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "hotels"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.hotels_admin_hotels_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/hotels/hotel'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Hotels)
      end
    end
  end
end
