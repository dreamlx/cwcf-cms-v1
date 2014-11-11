class RemovePageAvatarFromRefineryPages < ActiveRecord::Migration
  def up
    remove_column :refinery_pages, :page_avatar_id
  end

  def down
    add_column :refinery_pages, :page_avatar_id, :integer
  end
end
