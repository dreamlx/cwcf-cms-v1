class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.integer :x_c
      t.integer :y_c

      t.belongs_to :store
      t.belongs_to :product

      t.timestamps
    end
  end
end
