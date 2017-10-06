class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.string :name
      t.string :belonging
      t.integer :phone
      t.string :email
      t.string :message
      
      t.timestamps null: false
    end
  end
end
