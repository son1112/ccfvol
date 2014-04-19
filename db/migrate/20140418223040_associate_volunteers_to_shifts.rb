class AssociateVolunteersToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :volunteer_id, :integer
    add_index :shifts, :volunteer_id
    add_index :shifts, :activity_id

    remove_column :volunteers, :shifts
    add_column :volunteers, :shift_id, :integer

  end
end
