module Refinery
  module Cooperations
    class Cooperation < Refinery::Core::BaseModel
      self.table_name = 'refinery_cooperations'

      attr_accessible :title, :cooperation_avatar_id, :main_url, :position, :cooperation_type_id

      validates :title, :presence => true, :uniqueness => true

      belongs_to :cooperation_type
    end
  end
end
