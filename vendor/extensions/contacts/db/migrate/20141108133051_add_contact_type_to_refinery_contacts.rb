class AddContactTypeToRefineryContacts < ActiveRecord::Migration
  def change
    add_column :refinery_contacts, :contact_type, :string
  end
end
