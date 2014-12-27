class CreateSpepages < ActiveRecord::Migration
  def change
    create_table :spepages do |t|
      t.string :pagename
      t.integer :specol_id

      t.timestamps
    end
    add_index :spepages, [:specol_id, :created_at]
  end
end
