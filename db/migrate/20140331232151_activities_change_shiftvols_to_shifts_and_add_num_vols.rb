class ActivitiesChangeShiftvolsToShiftsAndAddNumVols < ActiveRecord::Migration
  def change
    remove_column :activities, :shift_vols
    add_column :activities, :shifts, :text
    add_column :activities, :num_vols, :integer
  end
end
