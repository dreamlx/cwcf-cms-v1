# This migration comes from refinery_exhibitors (originally 1)
class CreateExhibitorsExhibitors < ActiveRecord::Migration

  def up
    create_table :refinery_exhibitors do |t|
      t.string :title
      t.string :logo
      t.text :description
      t.integer :year
      t.string :area
      t.string :place_num
      t.string :brand
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-exhibitors"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/exhibitors/exhibitors"})
    end

    drop_table :refinery_exhibitors

  end

end
