module Refinery
  module Cooperations
    class CooperationType < Refinery::Core::BaseModel

      attr_accessible :name, :position

      validates :name, :presence => true, :uniqueness => true

      has_many :cooperations
    end
  end
end
