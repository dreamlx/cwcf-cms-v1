class Blank < ActiveRecord::Base
  attr_accessible :apply_type, :brand_name, :co_add, :co_fax, :co_name, :co_phone, 
  :co_url, :co_zip, :contact_name, :country, :email, :gender, 
  :job_columb, :job_position, :media_type, :mobile_phone,
  :status

  before_create :set_default_status

  private

  def set_default_status
    # applied accepted denied
    self.status = "applied"
  end
end
