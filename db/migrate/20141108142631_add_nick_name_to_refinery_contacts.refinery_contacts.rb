# This migration comes from refinery_contacts (originally 20141108142557)
class AddNickNameToRefineryContacts < ActiveRecord::Migration
  def change
    add_column :refinery_contacts, :nick_name, :string
  end
end
