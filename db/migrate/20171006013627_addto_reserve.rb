class AddtoReserve < ActiveRecord::Migration
  def change
    add_column :reserves, :reserved_day, :date
    add_column :reserves, :sponsor, :string
    add_column :reserves, :post, :integer
    add_column :reserves, :address1, :string
    add_column :reserves, :address2, :string
  end
end

