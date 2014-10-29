# This migration comes from refinery_hotels (originally 20141029065913)
class AddHotelAvatarToRefineryHotels < ActiveRecord::Migration
  def change
    add_column :refinery_hotels, :hotel_avatar_id, :integer
  end
end
