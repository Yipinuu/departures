class AddUserIdToSpecol < ActiveRecord::Migration
  def change
    add_column :specols, :user_id, :integer
    add_index :specols, [:user_id, :created_at]
  end
end
