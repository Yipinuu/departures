class AddEmailToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
    add_column :users, :integral1, :integer
    add_column :users, :integral2, :integer
    add_column :users, :integral3, :integer
    add_column :users, :integral4, :integer
    add_column :users, :integral5, :integer
    add_column :users, :integral6, :integer
  end
end
