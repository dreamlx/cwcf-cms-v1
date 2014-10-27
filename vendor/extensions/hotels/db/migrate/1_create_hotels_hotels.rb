class CreateHotelsHotels < ActiveRecord::Migration

  def up
    create_table :refinery_hotels do |t|
      t.string :title
      t.string :star
      t.string :address
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-hotels"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/hotels/hotels"})
    end

    drop_table :refinery_hotels

  end

end
