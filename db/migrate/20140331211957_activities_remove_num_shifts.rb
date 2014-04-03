class ActivitiesRemoveNumShifts < ActiveRecord::Migration
  def change
    remove_column :activities, :num_shifts
  end
end
