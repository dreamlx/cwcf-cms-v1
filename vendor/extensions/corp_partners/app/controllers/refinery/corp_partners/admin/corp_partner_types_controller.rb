module Refinery
  module CorpPartners
    module Admin
      class CorpPartnerTypesController < ::Refinery::AdminController

        crudify :'refinery/corp_partners/corp_partner_type',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
