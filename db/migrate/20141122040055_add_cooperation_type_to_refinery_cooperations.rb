class AddCooperationTypeToRefineryCooperations < ActiveRecord::Migration
  def change
    add_column :refinery_cooperations, :cooperation_type_id, :integer
  end
end
