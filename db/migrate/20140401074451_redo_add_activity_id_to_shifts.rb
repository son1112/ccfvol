class RedoAddActivityIdToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :activity_id, :integer
  end
end
