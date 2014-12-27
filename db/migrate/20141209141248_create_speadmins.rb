class CreateSpeadmins < ActiveRecord::Migration
  def change
    create_table :speadmins do |t|
      t.integer :specol_id

      t.timestamps
    end
    add_index :speadmins, [:specol_id, :created_at]
  end
end
