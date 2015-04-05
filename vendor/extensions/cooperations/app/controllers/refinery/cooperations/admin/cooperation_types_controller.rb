module Refinery
  module Cooperations
    module Admin
      class CooperationTypesController < ::Refinery::AdminController

        crudify :'refinery/cooperations/cooperation_type',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
