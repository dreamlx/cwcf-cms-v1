module Refinery
  module Contacts
    module Admin
      class ContactsController < ::Refinery::AdminController

        before_filter :find_all_contact_types, :only => [:new, :edit]

        crudify :'refinery/contacts/contact',
                :title_attribute => 'nick_name',
                :xhr_paging => true

      protected

        def find_all_contact_types
          @contact_types = Refinery::Contacts::ContactType.all
        end

      end
    end
  end
end
