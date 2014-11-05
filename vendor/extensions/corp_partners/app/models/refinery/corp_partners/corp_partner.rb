module Refinery
  module CorpPartners
    class CorpPartner < Refinery::Core::BaseModel
      self.table_name = 'refinery_corp_partners'

      attr_accessible :title, :corp_partner_avatar_id, :main_url, :position

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
