class AddUserIdToSepadmins < ActiveRecord::Migration
  def change
    add_column :speadmins, :user_id, :integer
    add_index :speadmins, :user_id
  end
end
