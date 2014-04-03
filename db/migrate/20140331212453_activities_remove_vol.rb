class ActivitiesRemoveVol < ActiveRecord::Migration
  def change
    remove_column :activities, :vol
  end
end
