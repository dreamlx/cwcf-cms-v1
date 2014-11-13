module Refinery
  module Exhibitors
    module Admin
      class ExhibitorsController < ::Refinery::AdminController

        crudify :'refinery/exhibitors/exhibitor',
                :xhr_paging => true

      end
    end
  end
end
