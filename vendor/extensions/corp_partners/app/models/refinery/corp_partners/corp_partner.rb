module Refinery
  module CorpPartners
    class CorpPartner < Refinery::Core::BaseModel
      self.table_name = 'refinery_corp_partners'

      attr_accessible :title, :corp_partner_avatar_id, :main_url, :position, :corp_partner_type_id

      validates :title, :presence => true, :uniqueness => true
      belongs_to :corp_partner_type
    end
  end
end
