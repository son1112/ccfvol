class RmNumVolsFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :num_vols
  end
end
