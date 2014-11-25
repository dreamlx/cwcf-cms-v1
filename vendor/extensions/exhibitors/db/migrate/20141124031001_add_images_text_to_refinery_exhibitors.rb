class AddImagesTextToRefineryExhibitors < ActiveRecord::Migration
  def change
    add_column :refinery_exhibitors, :images_text, :text
  end
end
