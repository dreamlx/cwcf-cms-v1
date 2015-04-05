module Refinery
  module CorpPartners
    module Admin
      class CorpPartnersController < ::Refinery::AdminController
        before_filter :find_all_corp_partner_types, :only => [:new,:edit]
        crudify :'refinery/corp_partners/corp_partner',
                :xhr_paging => true
      protected

        def find_all_corp_partner_types
          @corp_partner_types = CorpPartnerType.all
        end

      end
    end
  end
end
