class RmVolunteersFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :volunteers_needed, :string
  end
end
