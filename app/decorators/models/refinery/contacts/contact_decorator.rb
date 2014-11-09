Refinery::Contacts::Contact.class_eval do
  # Whitelist the :Avatar_id parameter for form submission
  attr_accessible :contact_type, :nick_name
  attr_accessible :avatar_id, :qrcode_id, :qq

  belongs_to :avatar, :class_name => '::Refinery::Image'
  belongs_to :qrcode, :class_name => '::Refinery::Image'
end
