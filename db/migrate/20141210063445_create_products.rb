class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :status
      t.string :number

      t.timestamps
    end
  end
end
