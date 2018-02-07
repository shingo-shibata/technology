class AddRecordsToItems < ActiveRecord::Migration
  def change
    add_column :reserves, :policy, :string
  end
end
