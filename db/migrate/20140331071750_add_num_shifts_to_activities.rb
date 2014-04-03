class AddNumShiftsToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :num_shifts, :integer
    add_index :activities, :num_shifts
  end
end
