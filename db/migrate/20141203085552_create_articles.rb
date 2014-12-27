class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :user_id
      t.integer :specol_id
      t.integer :spepage_id

      t.timestamps
    end
    add_index :articles, [:user_id, :created_at]
    add_index :articles, [:specol_id, :created_at]
    add_index :articles, [:spepage_id, :created_at]   
  end
end
