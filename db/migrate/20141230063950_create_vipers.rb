class CreateVipers < ActiveRecord::Migration
  def change
    create_table :vipers do |t|
      t.string :name
      t.string :job
      t.string :co_name
      t.string :address
      t.string :zip
      t.string :tel
      t.string :phone
      t.string :co_url
      t.integer :t_ex
      t.integer :vip_num
      t.string :app_type
      t.string :status
      t.string :email
      
      t.timestamps
    end
  end
end
