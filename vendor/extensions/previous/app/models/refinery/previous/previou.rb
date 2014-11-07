module Refinery
  module Previous
    class Previou < Refinery::Core::BaseModel
      self.table_name = 'refinery_previous'

      attr_accessible :title, :previou_avatar_id, :description, :position

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
