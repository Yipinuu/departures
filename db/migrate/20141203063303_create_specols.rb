class CreateSpecols < ActiveRecord::Migration
  def change
    create_table :specols do |t|
      t.string :title

      t.timestamps
    end
  end
end
