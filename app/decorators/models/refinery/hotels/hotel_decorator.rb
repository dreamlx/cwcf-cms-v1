Refinery::Hotels::Hotel.class_eval do
  # Whitelist the :Avatar_id parameter for form submission
  attr_accessible :hotel_avatar_id

  # Add an association to the Refinery::Image class, so we
  # can take advantage of the magic that the class provides
  belongs_to :hotel_avatar, :class_name => '::Refinery::Image'
end
