class RemoveRemainderFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :remainder
  end
end
