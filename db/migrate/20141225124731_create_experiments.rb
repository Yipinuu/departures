class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.integer :specol_id
      t.integer :user_id
      t.boolean :speadmins, default: false
      t.boolean :leavemessages, default: true

      t.timestamps
    end
  end
end
