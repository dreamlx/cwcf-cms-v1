module Refinery
  module CorpPartners
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::CorpPartners

      engine_name :refinery_corp_partners

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "corp_partners"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.corp_partners_admin_corp_partners_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/corp_partners/corp_partner'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::CorpPartners)
      end
    end
  end
end
