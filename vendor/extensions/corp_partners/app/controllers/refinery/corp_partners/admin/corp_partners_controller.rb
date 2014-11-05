module Refinery
  module CorpPartners
    module Admin
      class CorpPartnersController < ::Refinery::AdminController

        crudify :'refinery/corp_partners/corp_partner',
                :xhr_paging => true

      end
    end
  end
end
