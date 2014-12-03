class AddStatusToBlank < ActiveRecord::Migration
  def change
    add_column  :blanks, :status, :string 
  end
end
