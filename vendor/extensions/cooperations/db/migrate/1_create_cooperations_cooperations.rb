class CreateCooperationsCooperations < ActiveRecord::Migration

  def up
    create_table :refinery_cooperations do |t|
      t.string :title
      t.integer :cooperation_avatar_id
      t.string :main_url
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-cooperations"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/cooperations/cooperations"})
    end

    drop_table :refinery_cooperations

  end

end
