class AddSeveralToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :day, :string
    add_column :shifts, :setup?, :boolean
    add_column :shifts, :start_time, :time
    add_column :shifts, :end_time, :time
  end
end
