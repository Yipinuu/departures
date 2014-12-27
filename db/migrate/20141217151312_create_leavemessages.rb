class CreateLeavemessages < ActiveRecord::Migration
  def change
    create_table :leavemessages do |t|
      t.string :message
      t.string :comment
      t.integer :user_id
      t.integer :specol_id

      t.timestamps
    end
  end
end
