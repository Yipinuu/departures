class AddContentToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :content, :longtext
  end
end
