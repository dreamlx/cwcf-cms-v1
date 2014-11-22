Refinery::Cooperations::Cooperation.class_eval do
  # Whitelist the :Avatar_id parameter for form submission
  attr_accessible :cooperation_avatar_id

  # Add an association to the Refinery::Image class, so we
  # can take advantage of the magic that the class provides
  belongs_to :cooperation_avatar, :class_name => '::Refinery::Image'
end
