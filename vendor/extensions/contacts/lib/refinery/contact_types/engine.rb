module Refinery
  module Contacts
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Contacts

      engine_name :refinery_contacts

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "contact_types"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.contacts_admin_contact_types_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/contacts/contact_type',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/contacts/contact_types(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::ContactTypes)
      end
    end
  end
end
