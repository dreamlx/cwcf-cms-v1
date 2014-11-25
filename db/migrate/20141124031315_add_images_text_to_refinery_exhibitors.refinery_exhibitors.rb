# This migration comes from refinery_exhibitors (originally 20141124031001)
class AddImagesTextToRefineryExhibitors < ActiveRecord::Migration
  def change
    add_column :refinery_exhibitors, :images_text, :text
  end
end
