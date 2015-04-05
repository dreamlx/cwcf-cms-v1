class AddUserIdToBlank < ActiveRecord::Migration
  def change
    add_column  :blanks, :user_id, :integer 
  end
end
