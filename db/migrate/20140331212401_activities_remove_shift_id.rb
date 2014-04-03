class ActivitiesRemoveShiftId < ActiveRecord::Migration
  def change
    remove_column :activities, :shift_id
  end
end
