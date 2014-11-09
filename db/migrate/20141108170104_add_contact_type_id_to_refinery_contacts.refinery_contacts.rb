# This migration comes from refinery_contacts (originally 20141108170002)
class AddContactTypeIdToRefineryContacts < ActiveRecord::Migration
  def change
    add_column :refinery_contacts, :contact_type_id, :integer
  end
end
