class AddNumVolsToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :vols, :integer
  end
end
