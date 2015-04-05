module Refinery
  module CorpPartners
    class CorpPartnerType < Refinery::Core::BaseModel

      attr_accessible :name, :position

      validates :name, :presence => true, :uniqueness => true

      has_many :corp_partners
    end
  end
end
