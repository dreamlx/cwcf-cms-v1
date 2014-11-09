module Refinery
  module Contacts
    class Contact < Refinery::Core::BaseModel
      self.table_name = 'refinery_contacts'

      attr_accessible :telephone, :fax, :postcode, :email, :address, :position, :contact_type_id

      validates :telephone, :presence => true, :uniqueness => true

      belongs_to :contact_type
    end
  end
end
