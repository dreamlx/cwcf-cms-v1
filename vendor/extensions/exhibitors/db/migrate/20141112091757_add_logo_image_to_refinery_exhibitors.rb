class AddLogoImageToRefineryExhibitors < ActiveRecord::Migration
  def change
    add_column :refinery_exhibitors, :logo_image_id, :integer
  end
end
