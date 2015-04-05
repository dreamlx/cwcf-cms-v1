class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :x_no
      t.integer :y_no

      t.timestamps
    end
  end
end
