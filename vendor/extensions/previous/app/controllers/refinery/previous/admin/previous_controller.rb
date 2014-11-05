module Refinery
  module Previous
    module Admin
      class PreviousController < ::Refinery::AdminController

        crudify :'refinery/previous/previou',
                :xhr_paging => true

      end
    end
  end
end
