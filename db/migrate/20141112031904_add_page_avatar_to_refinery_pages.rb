class AddPageAvatarToRefineryPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :page_avatar_id, :integer
  end
end
