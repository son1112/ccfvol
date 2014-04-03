class RmQueryMarkFromShiftsSetupBooleanAttribute < ActiveRecord::Migration
  def change
    remove_column :shifts, :setup?
    add_column :shifts, :setup, :boolean
  end
end
