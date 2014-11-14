module Refinery
  module Exhibitors
    class Exhibitor < Refinery::Core::BaseModel
      self.table_name = 'refinery_exhibitors'

      attr_accessible :title, :logo, :description, :year, :area, :place_num, :brand, :position

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
