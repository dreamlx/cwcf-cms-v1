# This migration comes from refinery_contacts (originally 20141108133051)
class AddContactTypeToRefineryContacts < ActiveRecord::Migration
  def change
    add_column :refinery_contacts, :contact_type, :string
  end
end
