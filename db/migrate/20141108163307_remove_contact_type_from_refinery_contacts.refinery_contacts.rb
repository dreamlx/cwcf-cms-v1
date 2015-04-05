# This migration comes from refinery_contacts (originally 20141108163215)
class RemoveContactTypeFromRefineryContacts < ActiveRecord::Migration
  def up
    remove_column :refinery_contacts, :contact_type
  end

  def down
    add_column :refinery_contacts, :contact_type, :string
  end
end
