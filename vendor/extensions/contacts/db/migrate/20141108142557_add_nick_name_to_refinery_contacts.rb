class AddNickNameToRefineryContacts < ActiveRecord::Migration
  def change
    add_column :refinery_contacts, :nick_name, :string
  end
end
