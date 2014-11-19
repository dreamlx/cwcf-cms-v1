module Refinery
  module CorpPartners
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::CorpPartners

      engine_name :refinery_corp_partners

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "corp_partner_types"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.corp_partners_admin_corp_partner_types_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/corp_partners/corp_partner_type',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/corp_partners/corp_partner_types(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::CorpPartnerTypes)
      end
    end
  end
end
