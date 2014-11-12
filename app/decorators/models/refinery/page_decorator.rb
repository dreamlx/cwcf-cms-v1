# Open the Refinery::Page model for manipulation

Refinery::Page.class_eval do
  # Whitelist the :background_image_id parameter for form submission
  attr_accessible :background_image_id, :page_avatar_id

  # Add an association to the Refinery::Image class, so we
  # can take advantage of the magic that the class provides
  belongs_to :background_image, :class_name => '::Refinery::Image'
  belongs_to :page_avatar, :class_name => '::Refinery::Image'
end
