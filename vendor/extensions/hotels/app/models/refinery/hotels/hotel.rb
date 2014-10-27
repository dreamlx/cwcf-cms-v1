module Refinery
  module Hotels
    class Hotel < Refinery::Core::BaseModel
      self.table_name = 'refinery_hotels'

      attr_accessible :title, :star, :address, :description, :position

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
