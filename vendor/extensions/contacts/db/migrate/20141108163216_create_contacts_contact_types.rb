class CreateContactsContactTypes < ActiveRecord::Migration

  def up
    create_table :refinery_contacts_contact_types do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-contacts"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/contacts/contact_types"})
    end

    drop_table :refinery_contacts_contact_types

  end

end
