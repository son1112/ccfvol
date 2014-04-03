class AddActivityIdToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :activity_id, :integer
    add_index :shifts, :activity_id
  end
end
