# This migration comes from refinery_exhibitors (originally 20141112091757)
class AddLogoImageToRefineryExhibitors < ActiveRecord::Migration
  def change
    add_column :refinery_exhibitors, :logo_image_id, :integer
  end
end
