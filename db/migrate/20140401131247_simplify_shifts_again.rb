class SimplifyShiftsAgain < ActiveRecord::Migration
  def change
    remove_column :shifts, :day
    add_column :shifts, :title, :string
    remove_column :shifts, :start_time
    remove_column :shifts, :end_time
    remove_column :shifts, :setup
  end
end
