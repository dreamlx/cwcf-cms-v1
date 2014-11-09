class AddContactTypeIdToRefineryContacts < ActiveRecord::Migration
  def change
    add_column :refinery_contacts, :contact_type_id, :integer
  end
end
