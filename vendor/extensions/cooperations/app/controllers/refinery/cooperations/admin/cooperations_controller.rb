module Refinery
  module Cooperations
    module Admin
      class CooperationsController < ::Refinery::AdminController
        before_filter :find_all_cooperation_types, :only => [:new, :edit]

        crudify :'refinery/cooperations/cooperation',
                :xhr_paging => true

      protected

        def find_all_cooperation_types
          @cooperation_types = Refinery::Cooperations::CooperationType.all
        end

      end
    end
  end
end
