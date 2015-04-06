class AddColumnToBlank < ActiveRecord::Migration
  def change
    add_column :blanks, :co_en_name, :string
    add_column :blanks, :co_en_add, :string
  end
end
