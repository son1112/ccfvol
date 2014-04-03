class AddShiftsVolunteersTextComboToActivites < ActiveRecord::Migration
  def change
    add_column :activities, :shift_vols, :text
  end
end
