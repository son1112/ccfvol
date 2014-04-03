class ShiftsRemoveActivityId < ActiveRecord::Migration
  def change
    remove_column :shifts, :activity_id
  end
end
