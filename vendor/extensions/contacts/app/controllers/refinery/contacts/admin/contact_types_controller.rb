module Refinery
  module Contacts
    module Admin
      class ContactTypesController < ::Refinery::AdminController

        crudify :'refinery/contacts/contact_type',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
