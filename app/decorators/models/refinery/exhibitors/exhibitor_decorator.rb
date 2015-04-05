Refinery::Exhibitors::Exhibitor.class_eval do
  # Whitelist the :Avatar_id parameter for form submission
  attr_accessible :logo_image_id, :images_text

  # Add an association to the Refinery::Image class, so we
  # can take advantage of the magic that the class provides
  belongs_to :logo_image, :class_name => '::Refinery::Image'
end
