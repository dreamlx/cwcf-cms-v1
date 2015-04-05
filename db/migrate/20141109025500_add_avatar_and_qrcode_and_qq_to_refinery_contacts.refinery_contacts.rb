# This migration comes from refinery_contacts (originally 20141109025330)
class AddAvatarAndQrcodeAndQqToRefineryContacts < ActiveRecord::Migration
  def change
    add_column :refinery_contacts, :avatar_id, :integer
    add_column :refinery_contacts, :qrcode_id, :integer
    add_column :refinery_contacts, :qq, :integer
  end
end
