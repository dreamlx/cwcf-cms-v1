module Refinery
  module Contacts
    class ContactType < Refinery::Core::BaseModel

      attr_accessible :name, :position

      validates :name, :presence => true, :uniqueness => true

      has_many :contacts
    end
  end
end
