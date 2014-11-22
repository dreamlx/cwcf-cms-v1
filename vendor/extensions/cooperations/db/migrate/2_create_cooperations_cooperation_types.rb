class CreateCooperationsCooperationTypes < ActiveRecord::Migration

  def up
    create_table :refinery_cooperations_cooperation_types do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-cooperations"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/cooperations/cooperation_types"})
    end

    drop_table :refinery_cooperations_cooperation_types

  end

end
