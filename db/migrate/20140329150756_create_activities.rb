class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.integer :vol
      t.integer :shift_id

      t.timestamps
    end
  end
end
