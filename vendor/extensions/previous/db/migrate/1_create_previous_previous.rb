class CreatePreviousPrevious < ActiveRecord::Migration

  def up
    create_table :refinery_previous do |t|
      t.string :title
      t.integer :previou_avatar_id
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-previous"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/previous/previous"})
    end

    drop_table :refinery_previous

  end

end
